# frozen_string_literal: true

require 'rspec/autorun'
require '../find_the_town_judge_with_two_adj_lists'
describe FindTheTownJudgeWithTwoAdjLists do
  it 'return judge out of two people' do
    expect(subject.find_judge(2, [[1, 2]])).to eq 2
  end

  it 'return judge out of three people' do
    expect(subject.find_judge(3, [[1, 3], [2, 3]])).to eq 3
  end

  it 'return -1 when judge doesn\'t exists' do
    expect(subject.find_judge(3, [[1, 3], [2, 3], [3, 1]])).to eq(-1)
  end
end
