# frozen_string_literal: true

require_relative 'statement'
require_relative 'date'

# Account class for all methods and functionality involving an account object
class Account
  MINIMUM = 0

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.create_credit(amount, @balance)
    @balance
  end

  def withdraw(amount)
    error = 'You do not have enough in your account to withdraw that much!'
    raise error if too_much?(amount)

    @balance -= amount
    @statement.create_debit(amount, @balance)
    @balance
  end

  def print_statement
    @statement.show
  end

  private

  def too_much?(amount)
    @balance - amount < MINIMUM
  end
end
