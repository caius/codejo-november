class Bruce
  VERSION = "0.0.1"

  PICTURE_VALUES = {
    :A => 14,
    :K => 13,
    :Q => 12,
    :J => 11
  }

  PAIR_CATCH_PHRASE = "You get nothing for a pair, not in this game"

  def highest_card card1, card2
    return card1 if card2.nil?
    return card2 if card1.nil?

    card1_value = card_value card1
    card2_value = card_value card2

    if card1_value > card2_value
      card1
    elsif card1_value == card2_value
      PAIR_CATCH_PHRASE
    else
      card2
    end

  end

  def card_value card
    card = card[0...-1]

    if PICTURE_VALUES.has_key? card.to_sym
      PICTURE_VALUES[card.to_sym]
    else
      card.to_i
    end
  end
end
