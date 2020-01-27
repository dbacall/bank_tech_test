class Account

  def initialize
    @balance = 0
  end 

  def get_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

end