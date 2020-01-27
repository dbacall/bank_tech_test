class Statement
  
  def initialize(date=Date.new)
    @statement = []
    @date = date
  end

  def create_credit(amount, balance_after)
    @statement << [ @date.today, add_decimal_places(amount), "", add_decimal_places(balance_after)]
  end

  def create_debit(amount, balance_after)
    @statement << [ @date.today, "", add_decimal_places(amount), add_decimal_places(balance_after)]
  end

  def show
    statement = @statement.reverse.map do |line|
      line.join(" || ")
    end
    "date || credit || debit || balance\n" + statement.join("\n")
  end

  private

  def add_decimal_places(number)
    '%.2f' % number
  end
end