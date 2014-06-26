# require 'test/unit'
require 'minitest/autorun'

class ChangeMachine

  # %
  # /

  # Returns an array indicating the quantity of
  # each denomination required.
  # [pennies, nickels, dimes, quarters]
  def issue_coins(amount)
    return [1, 0, 0, 0]
  end
end

class ChangeMachineTest < MiniTest::Unit::TestCase


  def test_one_penny

    # x = lambda { |i| puts "hello #{i}" }
    # x.call(3)

    machine = ChangeMachine.new
    coins = machine.issue_coins(1)
    assert_equal [1, 0, 0, 0], coins
  end

  def test_pennies
    machine = ChangeMachine.new
    coins = machine.issue_coins(4)
    assert_equal [4, 0, 0, 0], coins
  end

  # def test_nickels
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(5)
  #   assert_equal [0, 1, 0, 0], coins
  # end

  # def test_nickels_and_pennies
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(6)
  #   assert_equal [1, 1, 0, 0], coins
  # end
  # def test_dimes
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(10)
  #   assert_equal [0, 0, 1, 0], coins
  # end
  # def test_dimes_and_nickels
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(15)
  #   assert_equal [0, 1, 1, 0], coins
  # end
  # def test_quarters
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(25)
  #   assert_equal [0, 0, 0, 1], coins
  # end

  # def test_quarters_and_dimes
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(35)
  #   assert_equal [0, 0, 1, 1], coins
  # end

  # def test_99
  #   machine = ChangeMachine.new
  #   coins = machine.issue_coins(99)
  #   assert_equal [4, 0, 2, 3], coins
  # end
end
