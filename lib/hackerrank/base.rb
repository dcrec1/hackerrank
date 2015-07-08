require 'httparty'

module HackerRank
  class Base
    include HTTParty
    base_uri 'https://www.hackerrank.com/x/api/v2'

    private

    def self.get(path)
      super(path, auth)['data']
    end
    
    def self.post(path, params)
      super(path, auth.merge(body: params))['data']
    end

    def self.auth
      { query: { access_token: HackerRank.access_token }}
    end
  end
end
