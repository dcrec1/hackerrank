require 'spec_helper'

describe HackerRank do
  before :all do
    HackerRank.access_token = ENV['HACKERRANK_ACCESS_TOKEN'] || "TEST"
  end

  it 'has a version number' do
    expect(HackerRank::VERSION).not_to be nil
  end

  describe HackerRank::Test do
    describe ".all" do
      it 'serializes the tests' do
        tests = VCR.use_cassette('tests_all') { HackerRank::Test.all }
        expect(tests.length).to eql 2
      end
    end

    describe ".find" do
      it 'serializes a test' do
        test = VCR.use_cassette('tests_find') { HackerRank::Test.find '12345' }
        expect(test['max_score']['total']).to eql 210.0
      end
    end
  end
end
