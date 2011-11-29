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
    return card1 unless card2
    return card2 unless card1

    card1_value, card2_value = card_value(card1), card_value(card2)
    
    return card1 if card1_value > card2_value
    return PAIR_CATCH_PHRASE if card1_value == card2_value
    card2
  end

  def card_value card
    PICTURE_VALUES[card.chop.to_sym] || card.to_i
  end

end
