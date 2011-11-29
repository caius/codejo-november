require "minitest/autorun"

require "bruce"

class TestBruce < MiniTest::Unit::TestCase

  def test_create_new_bruce
    refute_nil Bruce.new
  end

  def test_nil_params
    assert_nil Bruce.new.highest_card nil, nil
  end

end
