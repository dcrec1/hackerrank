module HackerRank
  class Template < Base
    collection_path -> (_) { '/templates' }

    def self.response_key
      'models'
    end
  end
end
