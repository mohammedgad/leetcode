# frozen_string_literal: true

require 'rspec/autorun'
require '../x_of_a_kind_in_a_deck_of_cards'
describe XOfAKindInADeckOfCards do
  it 'is splittable' do
    expect(subject.has_groups_size_x([1, 2, 3, 4, 4, 3, 2, 1])).to eq true
  end

  it 'is splittable' do
    expect(subject.has_groups_size_x([1, 1, 2, 2, 2, 2])).to eq true
  end

  it 'is not splittable' do
    expect(subject.has_groups_size_x([1, 1, 1, 2, 2, 2, 3, 3])).to eq false
  end

  it 'is not splittable' do
    expect(subject.has_groups_size_x([1])).to eq false
  end
end
