require 'spec_helper'

describe HackerRank do
  before :all do
    HackerRank.access_token = ENV['HACKERRANK_ACCESS_TOKEN'] || "TEST"
  end

  it 'has a version number' do
    expect(HackerRank::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
