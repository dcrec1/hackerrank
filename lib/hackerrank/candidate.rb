module HackerRank
  class Candidate < Base
    collection_path -> (params) { "/tests/#{params[:test_id]}/candidates" }

    def self.find_by_username(username, params)
      request :get, "/view", params.merge(username: username)
    end
  end
end
