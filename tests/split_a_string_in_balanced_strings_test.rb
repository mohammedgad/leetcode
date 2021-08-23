# frozen_string_literal: true

require '../split_a_string_in_balanced_strings'
describe SplitAStringInBalancedStrings do
  it 'return four counts' do
    expect(subject.balanced_string_split('RLRRLLRLRL')).to eq 4
  end

  it 'return three counts' do
    expect(subject.balanced_string_split('RLLLLRRRLR')).to eq 3
  end

  it 'return one counts' do
    expect(subject.balanced_string_split('LLLLRRRR')).to eq 1
  end

  it 'return two counts' do
    expect(subject.balanced_string_split('RLRRRLLRLL')).to eq 2
  end
end
