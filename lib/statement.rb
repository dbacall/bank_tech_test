class Statement
  
  def initialize(date=Date.new)
    @statement = []
    @date = date
  end

  def create_credit(amount, balance_after)
    @statement << [ @date.today, '%.2f' % amount, "", '%.2f' % balance_after]
  end

  def create_debit(amount, balance_after)
    @statement << [ @date.today, "", '%.2f' % amount, '%.2f' % balance_after]
  end

  def show
    statement = @statement.reverse.map do |line|
      line.join(" || ")
    end
    "date || credit || debit || balance\n" + statement.join("\n")
  end
  
end