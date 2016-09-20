module HackerRank
  class Test < Base
    collection_path -> (params) { "/tests" }

    def self.response_key
      'data'
    end
  end
end
