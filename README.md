# arbitrage_fx_crawler

[![CircleCI](https://circleci.com/gh/fughz/arbitrage_fx_crawler.svg?style=svg)](https://circleci.com/gh/fughz/arbitrage_fx_crawler)
[![Issue Count](https://codeclimate.com/github/fughz/arbitrage_fx_crawler/badges/issue_count.svg)](https://codeclimate.com/github/fughz/arbitrage_fx_crawler)

arbitrage fx crawler by Ruby on Rails.

## Installation

execute:

    $ git clone git@github.com:fughz/arbitrage_fx_crawler.git
    $ cd arbitrage_fx_crawler
    $ bundle install --path vendor/bundle

## Usage

TODO: Write usage instructions here

### Deploy

#### Nginx setup

    $ bundle exec cap production nginx:setup
    $ bundle exec cap production nginx:reload

#### Unicorn setup

    $ bundle exec cap production unicorn:setup_initializer
    $ bundle exec cap production unicorn:setup_app_config
    $ bundle exec cap production unicorn:restart

#### arbitrage_fx_crawler setup

    $ bundle exec cap production deploy

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fughz/arbitrage_fx_crawler. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
