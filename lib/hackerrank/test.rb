require 'httparty'

module HackerRank
  class Test
    include HTTParty
    base_uri 'https://www.hackerrank.com/x/api/v2'

    def self.all
      get '/tests'
    end

    def self.find(id)
      get "/tests/#{id}"
    end

    private

    def self.get(path)
      super(path, query: { access_token: HackerRank.access_token })['data']
    end
  end
end
