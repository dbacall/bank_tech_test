class Statement
  
  def initialize
    @statement = []
  end

  def create_credit(amount, balance_after)
    @statement << [ Time.now.strftime("%d/%m/%Y"), '%.2f' % amount, "", '%.2f' % balance_after]
  end

  def create_debit(amount, balance_after)
    @statement << [ Time.now.strftime("%d/%m/%Y"), "", '%.2f' % amount, '%.2f' % balance_after]
  end

  def show
    statement = @statement.reverse.map do |line|
      line.join(" || ")
    end
    "date || credit || debit || balance\n" + statement.join("\n")
  end
end