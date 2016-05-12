# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'fx_info_reader'

Trader.create(
  [
    {
      name: "GMOクリック証券 FXネオ",
      key: FxInfoReader::Trader::GMO_CLICK_FX_NEO
    },
    {
      name: "楽天証券FXCM",
      key: FxInfoReader::Trader::FXCM
    },
    {
      name: "DMM FX",
      key: FxInfoReader::Trader::DMM_FX
    },
    {
      name: "住信SBIネット銀行 Oh! FX",
      key: FxInfoReader::Trader::OH_FX
    },
    {
      name: "ヒロセ通商 LION FX",
      key: FxInfoReader::Trader::LION_FX
    }
  ]
)
