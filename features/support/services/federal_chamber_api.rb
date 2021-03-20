# frozen_string_literal: true

module Services
  # class to request for api
  class FederalChamberApi
    def all_deputies
      params = 'deputados?ordem=ASC&ordenarPor=nome'
      conn = Services::BaseApi.new.connection(params)
      JSON.parse(conn.get.body)
    end
  end
end
