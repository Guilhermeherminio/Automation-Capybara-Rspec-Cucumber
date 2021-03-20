# frozen_string_literal: true

module Services
  # class to make a base resquest to federal chamber api
  class BaseApi
    def connection(param)
      conn = Faraday.new(
        url: "https://dadosabertos.camara.leg.br/api/v2/#{param}",
        headers: {'Content-Type' => 'application/json'}
      )
    end
  end
end

World(Services)
