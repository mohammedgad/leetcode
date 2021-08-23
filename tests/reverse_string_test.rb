# frozen_string_literal: true

require '../reverse_string'
describe ReverseString do
  it 'reverse a string' do
    expect(subject.reverse(%w[h e l l o])).to eq %w[o l l e h]
  end

  it 'rotate 4x4 image' do
    expect(subject.reverse(%w[H a n n a h])).to eq %w[h a n n a H]
  end
end
