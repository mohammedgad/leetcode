# frozen_string_literal: true

require 'rspec/autorun'
require '../reverse_string_ii'
describe ReverseStringII do
  it 'with short string' do
    expect(subject.reverse_str(+'abcdefg', 2)).to eq('bacdfeg')
  end

  it 'with k is higher than the string length' do
    expect(subject.reverse_str(+'abcdefg', 10)).to eq('gfedcba')
  end

  it 'with long string' do
    expect(subject.reverse_str(+'hyzqyljrnigxvdtneasepfahmtyhlohwxmkqcdfehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqlimjkfnqcqnajmebeddqsgl', 39)).to eq 'fdcqkmxwholhytmhafpesaentdvxginrjlyqzyhehybknvdmfrfvtbsovjbdhevlfxpdaovjgunjqllgsqddebemjanqcqnfkjmi'
  end
end
