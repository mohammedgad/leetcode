# frozen_string_literal: true

require '../valid_parentheses'
describe ValidParentheses do
  it 'returns false' do
    expect(subject.is_valid('(]')).to be_falsey
  end

  it 'returns false' do
    expect(subject.is_valid('((')).to be_falsey
  end

  it 'returns true' do
    expect(subject.is_valid('()[]{}')).to be_truthy
  end
end
