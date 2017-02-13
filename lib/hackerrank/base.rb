require 'httparty'

module HackerRank
  class Base
    BASE_URI = "https://www.hackerrank.com/x/api/v2"

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

    def self.delete(id, params = {})
      request :delete, "/#{id}", params
    end

    private

    def self.request(method, path, body_params, query_params = {})
      HTTParty.send(method, "#{BASE_URI}#{@collection_path.call(body_params)}#{path}", { query: auth.merge(query_params), body: body_params })[response_key]
    end

    def self.auth
      { access_token: HackerRank.access_token }
    end
  end
end
