require 'httparty'

module HackerRank
  class Base
    include HTTParty
    base_uri 'https://www.hackerrank.com/x/api/v2'

    def self.collection_path(collection_path)
      @collection_path = collection_path
    end

    def self.all(params = {})
      request :get, "", params
    end

    def self.find(id, params = {})
      request :get, "/#{id}", params
    end

    def self.create(params)
      request :post, "", params
    end

    def self.update(id, params)
      request :put, "/#{id}", params
    end

    private

    def self.request(method, path, params)
      send(method, "#{@collection_path.call(params)}#{path}", auth.merge(body: params))['data']
    end

    def self.auth
      { query: { access_token: HackerRank.access_token }}
    end
  end
end
