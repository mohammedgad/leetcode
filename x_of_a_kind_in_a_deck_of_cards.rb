# frozen_string_literal: true

class XOfAKindInADeckOfCards
  # @param {Integer[]} deck
  # @return {Boolean}
  def has_groups_size_x(deck)
    sorted_deck = {}
    deck.each do |card|
      sorted_deck[card].nil? ? sorted_deck[card] = 1 : sorted_deck[card] += 1
    end
    first_card = deck[0]
    first_card_set_count = sorted_deck[first_card]
    minimum_set = sorted_deck.values.min
    return false if minimum_set == 1

    i = minimum_set
    doable = false
    while i >= 2 && !doable
      doable = sorted_deck.all? { |_set, count| (count % i).zero? }
      break true if doable

      i -= 1
    end
    doable
  end
end
