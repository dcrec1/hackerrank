module HackerRank
  class Candidate < Base
    collection_path -> (params) { "/tests/#{params.delete(:test_id)}/candidates" }

    def self.find_by_username(username, params)
      request :get, "/view", params, { username: username }
    end

    def self.response_key
      'data'
    end
  end
end
