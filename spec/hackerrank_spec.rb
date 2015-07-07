require 'spec_helper'

describe HackerRank do
  before :all do
    HackerRank.access_token = ENV['HACKERRANK_ACCESS_TOKEN'] || "TEST"
  end

  it 'has a version number' do
    expect(HackerRank::VERSION).not_to be nil
  end

  describe HackerRank::Tests do
    describe ".all" do
      it 'serializes the tests' do
        tests = VCR.use_cassette('tests_all') { HackerRank::Tests.all }
        expect(tests.length).to eql 2
      end
    end

    describe ".find" do
      it 'serializes a test' do
        test = VCR.use_cassette('tests_find') { HackerRank::Tests.find '12345' }
        expect(test['max_score']['total']).to eql 210.0
      end
    end
  end
end
