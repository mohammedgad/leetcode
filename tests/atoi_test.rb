# frozen_string_literal: true

require '../atoi'
describe Atoi do
  it 'converts a string to integer' do
    expect(subject.my_atoi('42')).to eq 42
  end

  it 'ignore white spaces' do
    expect(subject.my_atoi('   -42')).to eq(-42)
  end

  it 'returns 4193 because conversion stops at digit "3" as the next character is not a numerical digit' do
    expect(subject.my_atoi('4193 with words')).to eq 4193
  end

  it 'returns 0 because first non-whitespace character is "w"' do
    expect(subject.my_atoi('words and 987')).to eq 0
  end

  it 'return INT_MIN out of the range of a 32-bit signed integer' do
    expect(subject.my_atoi('-91283472332')).to eq(-2_147_483_648)
  end

  it 'return number before decimal point' do
    expect(subject.my_atoi('3.14159')).to eq(3)
  end

  it 'with strange format' do
    expect(subject.my_atoi('  -0012a42')).to eq(-12)
  end

  it 'with double signs' do
    expect(subject.my_atoi('+-2')).to eq(0)
  end

  it 'with one sign' do
    expect(subject.my_atoi('+')).to eq(0)
  end

  it 'with space after a number' do
    expect(subject.my_atoi('   +1 123')).to eq(1)
  end
end
