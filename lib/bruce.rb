class Bruce
  VERSION = "0.0.1"

  def highest_card card1, card2
    return card1 if card2.nil?
    return card2 if card1.nil?
  end
end
