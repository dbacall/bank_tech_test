# frozen_string_literal: true

require_relative '../lib/printer.rb'

describe Printer do
  let(:printer) { Printer.new }

  describe '#print' do
    it 'returns a statement with 1 credit' do
      transactions = [['27/01/2020', '100.00', '', '100.00']]
      expect(printer.print(transactions)).to eq('date || credit || debit || ' \
      "balance\n27/01/2020 || 100.00 ||  || 100.00")
    end

    it 'returns a statement with 1 credit and 1 debit' do
      transactions = [
        ['27/01/2020', '100.00', '', '100.00'],
        ['27/01/2020', '', '100.00', '0.00']
      ]
      expect(printer.print(transactions)).to eq('date || credit || debit || '\
      "balance\n27/01/2020 ||  || 100.00 || 0.00\n27/01/2020 || 100.00 " \
      '||  || 100.00')
    end
  end
end
