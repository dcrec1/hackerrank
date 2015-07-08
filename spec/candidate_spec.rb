require 'spec_helper'

describe HackerRank::Candidate do
  describe ".all"  do
    it 'serializes the candidates by a test id' do
      candidates = VCR.use_cassette('candidates_all')  { HackerRank::Candidate.all test_id: 12345 }
      expect(candidates.length).to eql 1
    end
  end

  describe ".create" do
    it 'creates a candidate for a test' do
      candidate = VCR.use_cassette('candidates_create')  { HackerRank::Candidate.create test_id: 12345, username: 'dc.rec1@gmail.com' }
      expect(candidate['test_link']).to_not be_nil
    end
  end
end
