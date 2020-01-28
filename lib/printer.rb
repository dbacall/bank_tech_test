class Printer

  def print(statement)
    transactions = statement.reverse.map do |transaction|
      transaction.join(' || ')
    end
    "date || credit || debit || balance\n" + transactions.join("\n")
  end

end
