# frozen_string_literal: true

require '../valid_palindrome'
describe ValidPalindrome do
  it 'returns valid palindrome' do
    expect(subject.is_palindrome('A man, a plan, a canal: Panama')).to eq true
  end

  it 'returns invalid palindrome' do
    expect(subject.is_palindrome('race a car')).to eq false
  end
end
