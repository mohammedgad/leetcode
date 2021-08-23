# frozen_string_literal: true

require '../reverse_integer'
describe ReverseInteger do
  it 'reverse a positive number' do
    expect(subject.reverse(123)).to eq 321
  end

  it 'reverse a negative number' do
    expect(subject.reverse(-123)).to eq(-321)
  end

  it 'reverse number ends with zero' do
    expect(subject.reverse(120)).to eq 21
  end
end
