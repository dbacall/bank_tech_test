class Statement
  
  def create_credit(amount, balance)
    [ Time.now.strftime("%d/%m/%Y"), '%.2f' % amount, "", '%.2f' % balance]
  end

  def create_debit(amount, balance)
    [ Time.now.strftime("%d/%m/%Y"), "", '%.2f' % amount, '%.2f' % balance]
  end
end