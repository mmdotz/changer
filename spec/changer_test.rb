require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  def test_run_works
    assert_respond_to(Changer, :run)
  end

  def test_run_returns_coin
    # assert_equal([1], Changer.run(1))
    # assert_equal([5], Changer.run(5))
    # assert_equal([10], Changer.run(10))
    assert_equal([25, 1, 1 ,1], Changer.run(28))
  end

  def test_run_returns_coins
    skip
    assert_equal([10, 10, 1, 1, 1, 1], Changer.run(24))
  end

end
