require 'spec_helper'
require 'pry'

describe HackerRank::Test do
  describe ".all" do
    it 'serializes the templates' do
      tests = VCR.use_cassette('templates_all') { HackerRank::Template.all }
      expect(tests.length).to eql 1
    end
  end
end
