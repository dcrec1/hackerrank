require 'httparty'

module HackerRank
  class Tests
    include HTTParty
    base_uri 'https://www.hackerrank.com/x/api/v2'

    def self.all
      parse get '/tests', query: { access_token: HackerRank.access_token }
    end

    private

    def self.parse(response)
      response['data']
    end
  end
end
