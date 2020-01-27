# frozen_string_literal: true

require_relative '../lib/date.rb'

describe Date do
  describe '#today' do
    it 'returns the date today' do
      date = Date.new
      expect(date.today).to eq Time.now.strftime('%d/%m/%Y').to_s
    end
  end
end
