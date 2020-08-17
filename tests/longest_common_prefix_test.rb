# frozen_string_literal: true

require 'rspec/autorun'
require '../longest_common_prefix'
describe LongestCommonPrefix do
  it 'returns first 2 chars' do
    expect(subject.longest_common_prefix(%w[flower flow flight])).to eq 'fl'
  end

  it 'returns empty string' do
    expect(subject.longest_common_prefix(%w[dog racecar car])).to eq ''
  end

  it 'with empty input array' do
    expect(subject.longest_common_prefix([])).to eq ''
  end
end
