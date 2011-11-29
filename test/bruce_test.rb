require "minitest/autorun"

require "bruce"

class TestBruce < MiniTest::Unit::TestCase

  def test_create_new_bruce
    refute_nil Bruce.new
  end

  def test_nil_params
    assert_nil Bruce.new.highest_card nil, nil
  end

  def test_first_param_nil
    assert_equal "5H", Bruce.new.highest_card(nil, "5H")
  end

  def test_second_param_nil
    assert_equal "2C", Bruce.new.highest_card("2C", nil)
  end

  def test_5H_and_2C_returns_5H
    assert_equal "5H", Bruce.new.highest_card("5H", "2C")
  end

  def test_AH_and_10S_returns_AH
    assert_equal "AH", Bruce.new.highest_card("AH", "10S")
  end

  def test_2D_and_QC_returns_QC
    assert_equal "QC", Bruce.new.highest_card("2D", "QC")
  end

  def test_2H_and_2C_returns_catch_phrase
    assert_equal "You get nothing for a pair, not in this game",
      Bruce.new.highest_card("2H", "2C")
  end

  def test_card_value_of_2H
    assert_equal 2, Bruce.new.card_value("2H")
  end

  def test_card_value_of_JC
    assert_equal 11, Bruce.new.card_value("JC")
  end

  def test_card_value_of_QS
    assert_equal 12, Bruce.new.card_value("QS")
  end

  def test_card_value_of_KH
    assert_equal 13, Bruce.new.card_value("KH")
  end

  def test_card_value_of_AD
    assert_equal 14, Bruce.new.card_value("AD")
  end
end
