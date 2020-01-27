require_relative "statement"
require_relative "date"

class Account

  MINIMUM = 0

  def initialize(statement=Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.create_credit(amount, @balance)
    @balance
  end

  def withdraw(amount)
    raise "You do not have enough in your account to withdraw that much!" if @balance - amount < MINIMUM
    @balance -= amount
    @statement.create_debit(amount, @balance)
    @balance
  end

  def print_statement
    @statement.show
  end
end