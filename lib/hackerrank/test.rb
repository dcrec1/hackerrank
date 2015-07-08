module HackerRank
  class Test < Base
    def self.all
      get '/tests'
    end

    def self.find(id)
      get "/tests/#{id}"
    end
  end
end
