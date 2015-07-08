require 'httparty'

module HackerRank
  class Base
    include HTTParty
    base_uri 'https://www.hackerrank.com/x/api/v2'

    private

    def self.get(path)
      super(path, query: { access_token: HackerRank.access_token })['data']
    end
  end
end
