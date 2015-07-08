module HackerRank
  class Candidate < Base
    def self.all(test_id:)
      get "/tests/#{test_id}/candidates"
    end
  end
end
