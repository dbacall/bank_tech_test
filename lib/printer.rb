# frozen_string_literal: true

# Printer class with responsibilty of printing statements
class Printer
  def print(statement)
    puts 'date || credit || debit || balance'
    statement.reverse.map do |transaction|
      puts transaction.join(' || ')
    end
  end
end
