module HackerRank
  class Candidate < Base
    def self.all(test_id:)
      get "/tests/#{test_id}/candidates"
    end

    def self.create(params)
      post "/tests/#{params.delete(:test_id)}/candidates", params
    end
  end
end
