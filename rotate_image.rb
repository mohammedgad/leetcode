# frozen_string_literal: true

#   original matrix
#   1 2 3
#   4 5 6
#   7 8 9
#
#   first round - transpose : iterate on the top right triangle and transpose
#   1 4 7
#   2 5 8
#   3 6 9
#
#   second round - reverse (swap columns): iterate with 2 pointers aproach (half columns number)
#   7 4 1
#   8 5 2
#   9 6 3

class RotateImage
  def rotate(matrix)
    matlen = matrix.size

    # First Round
    i = 0
    while i < matlen
      j = i
      while j < matlen
        unless i == j
          temp = matrix[i][j]
          matrix[i][j] = matrix[j][i]
          matrix[j][i] = temp
        end
        j += 1
      end
      i += 1
    end

    # Second Round
    i = 0
    while i < matlen
      j = 0
      while j < matlen / 2
        temp = matrix[i][j]
        matrix[i][j] = matrix[i][matlen - 1 - j]
        matrix[i][matlen - 1 - j] = temp
        j += 1
      end
      i += 1
    end

    matrix
  end
end
