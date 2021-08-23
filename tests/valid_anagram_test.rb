# frozen_string_literal: true

require '../valid_anagram'
describe ValidAnagram do
  it 'returns false if the two strings have different length' do
    expect(subject.is_anagram('car', 'raca')).to eq false
  end

  it 'returns false if the two strings have different characters' do
    expect(subject.is_anagram('car', 'rat')).to eq false
  end

  it 'returns true if the the two strings have the same characters' do
    expect(subject.is_anagram('anagram', 'nagaram')).to eq true
  end
end
