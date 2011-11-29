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
    assert_equal Bruce.new.highest_card(nil, "5H"), "5H"
  end

  def test_second_param_nil
    assert_equal Bruce.new.highest_card("2C", nil), "2C"
  end

end
