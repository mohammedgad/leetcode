# frozen_string_literal: true

class ValidSudoku
  def is_valid_sudoku(board)
    number = {}
    number_box = {}

    i = 0
    while i < board.size
      j = 0
      while j < board[i].size
        unless number[board[i][j]].is_a?(Array) || board[i][j] == '.'
          number[board[i][j]] = []
          number_box[board[i][j]] = []
        end

        unless board[i][j] == '.'
          number[board[i][j]] << [i, j]
          number_box[board[i][j]] << [i / 3, j / 3]
        end
        j += 1
      end
      i += 1
    end

    # check boxes
    number_box.each do |_k, v|
      return false if v.uniq != v
    end

    # check columns and rows
    number.each do |_k, v|
      c = v.map { |v| v[0] }
      return false if c.uniq != c

      r = v.map { |v| v[1] }
      return false if r.uniq != r
    end

    true
  end
end
