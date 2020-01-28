# frozen_string_literal: true

# Statement class for all methods and functionality involving a statement object
class Statement
  def initialize(date = Dates.new)
    @statement = []
    @date = date
  end

  def create_credit(amount, balance_after_transaction, date=@date.today)
    @statement << [date, add_decimal_places(amount), '',
                   add_decimal_places(balance_after_transaction)]
  end

  def create_debit(amount, balance_after_transaction, date=@date.today)
    @statement << [date, '', add_decimal_places(amount),
                   add_decimal_places(balance_after_transaction)]
  end

  def show
    statement = @statement.reverse.map do |transaction|
      transaction.join(' || ')
    end
    "date || credit || debit || balance\n" + statement.join("\n")
  end

  private

  def add_decimal_places(number)
    format('%.2f', number)
  end
end
