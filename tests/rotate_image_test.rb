# frozen_string_literal: true

require 'rspec/autorun'
require '../rotate_image'
describe RotateImage do
  it 'rotate 3x3 image' do
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    rotated_matrix = [
      [7, 4, 1],
      [8, 5, 2],
      [9, 6, 3]
    ]
    expect(subject.rotate(matrix)).to eq rotated_matrix
  end

  it 'rotate 4x4 image' do
    matrix = [
      [5, 1, 9, 11],
      [2, 4, 8, 10],
      [13, 3, 6, 7],
      [15, 14, 12, 16]
    ]

    rotated_matrix = [
      [15, 13, 2, 5],
      [14, 3, 4, 1],
      [12, 6, 8, 9],
      [16, 7, 10, 11]
    ]

    expect(subject.rotate(matrix)).to eq rotated_matrix
  end
end
