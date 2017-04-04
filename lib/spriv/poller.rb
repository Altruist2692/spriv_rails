require 'uri'

module Spriv
  class Poller
    AZURE_URI = 'https://sprivservices.azurewebsites.net/api/v2/Poller/GetDecision'

    def get_decision(id)
      begin
        uri = URI.parse(AZURE_URI)
        params = {
          key: ::Spriv.config.username,
          secret: ::Spriv.config.password,
          transactionID: id
        }
        uri.query = URI.encode_www_form(params)
        response = Net::HTTP.get(uri)
        JSON.parse(response)
      rescue Exception => e
        { message: e.message }
      end
    end
  end
end
