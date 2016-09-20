require "hackerrank/version"
require "hackerrank/base"
require "hackerrank/candidate"
require "hackerrank/test"
require "hackerrank/template"

module HackerRank
  def self.access_token=(access_token)
    @access_token = access_token
  end

  def self.access_token
    @access_token
  end
end
