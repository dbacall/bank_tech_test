# frozen_string_literal: true

# Printer class with responsibilty of printing statements
class Printer
  def print(statement)
    transactions = statement.reverse.map do |transaction|
      transaction.join(' || ')
    end
    'date || credit || debit || balance  ' + transactions.join('  ')
  end
end
