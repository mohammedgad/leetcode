# frozen_string_literal: true

require 'rspec/autorun'
require '../sum_of_all_subset_xor_totals'
describe SumOfAllSubsetXorTotals do
  it 'returns sum of all subset xor totals for array of two' do
    expect(subject.subset_xor_sum([1, 3])).to eq 6
  end

  it 'returns sum of all subset xor totals for array of three' do
    expect(subject.subset_xor_sum([5, 1, 6])).to eq 28
  end

  it 'returns sum of all subset xor totals for array of six' do
    expect(subject.subset_xor_sum([3, 4, 5, 6, 7, 8])).to eq 480
  end
end
