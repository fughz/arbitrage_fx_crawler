require 'fx_info_reader'

class Tasks::FetchSwapPoint

  def self.execute
    logger = Logger.new('log/tasks_fetch_swap_point.log')
    run_time = DateTime.now

    currency_pair_table = fetchCurrencyPairs(logger, run_time)

    Trader.all.each do |trader|
      logger.info("fetch trader key = " + trader.key + " name = " + trader.name)
      client = FxInfoReader::ClientFactory.create(trader.key)
      unless client.nil?
        client.get_swap_point_list.all.each do |pair, swap_point|
          unless currency_pair_table[pair].nil?
            pt = SwapPoint.new({
              short_point: swap_point.short,
              long_point: swap_point.long,
              currency_unit: swap_point.currency_unit,
              date: run_time
            })
            currency_pair_table[pair].swap_points << pt
            trader.swap_points << pt
            pt.save
          end
        end
      end
    end
  end

  private

  def self.fetchCurrencyPairs(logger, run_time)

    json_source = open("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20%28%22USDJPY,EURJPY,GBPJPY,AUDJPY,NZDJPY,CHFJPY,CADJPY,ZARJPY%22%29&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys") do |f|
      f.read
    end

    currency_pair_table = {}

    json = JSON.parse json_source
    json["query"]["results"]["rate"].each do |rate|
      name = rate["Name"]
      rate = rate["Rate"].to_f
      logger.info("fetch currency pair name = " + name + " rate = #{rate}")
      currency_pair = CurrencyPair.new({
        name: name,
        value: rate,
        date: run_time
      })
      currency_pair.save
      currency_pair_table[name] = currency_pair
    end
    return currency_pair_table
  end
end
