module HackerRank
  class Candidate < Base
    collection_path -> (params) { "/tests/#{params[:test_id]}/candidates" }
  end
end
