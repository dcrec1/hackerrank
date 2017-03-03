require 'spec_helper'

describe HackerRank::Candidate do
  describe ".all"  do
    it 'serializes the candidates by a test id' do
      candidates = VCR.use_cassette('candidates_all')  { HackerRank::Candidate.all test_id: 12345 }
      expect(candidates.length).to eql 1
    end
  end

  describe ".find" do
    it 'serializes the candidate by a test id and candidate id' do
      candidates = VCR.use_cassette('candidates_find')  { HackerRank::Candidate.find '357426', test_id: 12345 }
      expect(candidates['email']).to eql 'EMAIL'
    end
  end

  describe ".find_by_username" do
    let(:request) { HackerRank::Candidate.find_by_username 'dc.rec1@gmail.com', test_id: 12345 }

    it 'serializes the candidate by a test id and username' do
      candidates = VCR.use_cassette('candidates_find_by_username')  { request }
      expect(candidates['email']).to eql 'dc.rec1@gmail.com'
    end

    it 'sends request with empty body' do
      expect(HTTParty).to receive(:get) do |url, params|
        expect(params[:body]).to be_empty
        {'data' => nil}
      end
      request
    end
  end

  describe ".create" do
    it 'creates a candidate for a test' do
      candidate = VCR.use_cassette('candidates_create')  { HackerRank::Candidate.create test_id: 12345, username: 'dc.rec1@gmail.com' }
      expect(candidate['test_link']).to_not be_nil
    end
  end
end
