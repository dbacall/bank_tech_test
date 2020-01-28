# frozen_string_literal: true

require_relative '../lib/date.rb'

describe Dates do
  describe '#today' do
    it 'returns the date today' do
      date = Dates.new
      expect(date.today).to eq Time.now.strftime('%d/%m/%Y').to_s
    end
  end
end
