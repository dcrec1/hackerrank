module HackerRank
  class Test < Base
    collection_path -> (_) { "/tests" }

    def self.response_key
      'data'
    end
  end
end
