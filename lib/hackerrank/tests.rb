require 'httparty'

module HackerRank
  class Tests
    include HTTParty
    base_uri 'https://www.hackerrank.com/x/api/v2'

    def self.all
      get '/tests', query: { access_token: HackerRank.access_token }
    end
  end
end
