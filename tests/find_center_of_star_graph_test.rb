# frozen_string_literal: true

require 'rspec/autorun'
require '../find_center_of_star_graph'
describe FindCenterOfStarGraph do
  it 'has three edges' do
    expect(subject.find_center([[1, 2], [2, 3], [4, 2]])).to eq 2
  end

  it 'has four edges' do
    expect(subject.find_center([[1, 2], [5, 1], [1, 3], [1, 4]])).to eq 1
  end
end
