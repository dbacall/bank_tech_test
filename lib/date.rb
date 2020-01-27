# frozen_string_literal: true

# Date class for adding the today method to the pre-existing Ruby Date class
class Date
  def today
    Time.now.strftime('%d/%m/%Y')
  end
end
