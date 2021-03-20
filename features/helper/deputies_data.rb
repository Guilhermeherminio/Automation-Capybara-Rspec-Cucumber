# frozen_string_literal: true

module DataHelper
  # class to manager all deputies data
  class DeputiesDataHelper
    def length_parlamentary_id
      res = Services::FederalChamberApi.new.all_deputies
      res.first[1].length
    end
  end
end

World(DataHelper)
