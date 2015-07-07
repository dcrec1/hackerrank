require "hackerrank/version"
require "hackerrank/tests"

module HackerRank
  def self.access_token=(access_token)
    @access_token = access_token
  end

  def self.access_token
    @access_token
  end
end
