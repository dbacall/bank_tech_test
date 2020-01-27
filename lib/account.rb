require "statement"

class Account

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    @statement.create_credit(amount, @balance)
    @balance
  end

  def withdraw(amount)
    @balance -= amount
    @statement.create_debit(amount, @balance)
    @balance
  end

  def print_statement
    @statement.show
  end
end