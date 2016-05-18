require 'fx_info_reader'

class Tasks::FetchSwapPoint

  def self.execute
    logger = Logger.new('log/tasks_fetch_swap_point.log')

    Trader.all.each do |trader|
      client = FxInfoReader::ClientFactory.create(trader.key)
      client.get_swap_point_list.all.each do |swap_point|
        swap_point.short
        swap_point.long
      end
    end
  end
end
