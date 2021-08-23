# frozen_string_literal: true

require '../integer_to_roman'
describe IntToRoman do
  it 'with number equal 2' do
    expect(subject.int_to_roman(2)).to eq 'II'
  end

  it 'with number equal 710' do
    expect(subject.int_to_roman(710)).to eq 'DCCX'
  end

  it 'with number equal 58' do
    expect(subject.int_to_roman(58)).to eq 'LVIII'
  end

  it 'with number equal 1994' do
    expect(subject.int_to_roman(1994)).to eq 'MCMXCIV'
  end
end
