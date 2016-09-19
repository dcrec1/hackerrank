module HackerRank
  class Template < Base
    collection_path -> (params) { '/templates' }

    def self.response_key
      'models'
    end
  end
end
