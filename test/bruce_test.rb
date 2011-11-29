require "minitest/autorun"

require "bruce"

class TestBruce < MiniTest::Unit::TestCase

  def test_create_new_bruce
    refute_nil Bruce.new
  end

end
