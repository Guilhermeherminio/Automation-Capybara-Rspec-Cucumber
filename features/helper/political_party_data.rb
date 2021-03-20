# frozen_string_literal: true

module DataHelper
  # class to manager all deputies data
  class PoliticalPartyDataHelper
    def length_political_party
      res = Services::FederalChamberApi.new.all_deputies
      political_arr = []
      res.first[1].each { |item| political_arr << item['siglaPartido']}
      political_arr.uniq.length
    end
  end
end

World(DataHelper)
