# frozen_string_literal: true

require 'rspec/autorun'
require '../longest_substring_without_repeating_characters'
describe LongestSubstringWithoutRepeatingCharacters do
  it 'with empty string' do
    expect(subject.length_of_longest_substring('')).to eq(0)
  end

  it 'with the same repeated char' do
    expect(subject.length_of_longest_substring('bbbbbbbb')).to eq(1)
  end

  it 'with arbitrary chars' do
    expect(subject.length_of_longest_substring('abcabcbb')).to eq(3)
  end
end
