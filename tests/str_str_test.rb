# frozen_string_literal: true

require 'rspec/autorun'
require '../str_str'
describe StrStr do
  it 'with empty needle' do
    expect(subject.str_str('hello', '')).to eq 0
  end

  it 'with needle not found' do
    expect(subject.str_str('aaaaa', 'bba')).to eq(-1)
  end

  it 'with needle found' do
    expect(subject.str_str('hello', 'll')).to eq 2
  end

  it 'with needle found' do
    expect(subject.str_str('hello', 'll')).to eq 2
  end

  it 'with the needle is the haystack' do
    expect(subject.str_str('mississippi', 'mississippi')).to eq 0
  end

  it 'with very big needle in very big stack and not found' do
    expect(subject.str_str('a' * 10_001, 'a' * 10_000 + 'b')).to eq(-1)
  end

  it 'with very big needle in very big stack and found' do
    expect(subject.str_str('a' * 10_000, 'a' * 10_000)).to eq(0)
  end
end
