# frozen_string_literal: true

require '../count_and_say'
describe CountAndSay do
  it 'input 0' do
    expect(subject.count_and_say(0)).to eq('1')
  end

  it 'input 1' do
    expect(subject.count_and_say(1)).to eq('1')
  end

  it 'input 3' do
    expect(subject.count_and_say(3)).to eq('21')
  end

  it 'input 5' do
    expect(subject.count_and_say(5)).to eq('111221')
  end
end
