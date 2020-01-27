# frozen_string_literal: true

require_relative '../lib/statement.rb'

describe Statement do
  let(:date) { double :Date, today: Time.now.strftime('%d/%m/%Y') }
  let(:statement) { Statement.new(date) }

  describe '#create_credit' do
    it 'creates a credit with a date and balance in your statement' do
      expect(statement.create_credit(100, 100)).to eq [[
        Time.now.strftime('%d/%m/%Y'), '100.00', '', '100.00'
      ]]
    end
  end

  describe '#create_debit' do
    it 'creates a debit with a date and balance in your statement' do
      expect(statement.create_debit(100, 100)).to eq [[
        Time.now.strftime('%d/%m/%Y'), '', '100.00', '100.00'
      ]]
    end
  end

  describe '#show' do
    it 'returns a statement with a debit and credit on' do
      date = Time.now.strftime('%d/%m/%Y')
      statement.create_credit(100, 100)
      statement.create_debit(50, 50)
      expect(statement.show).to eq("date || credit || debit || balance\n#{date} ||  || 50.00 || 50.00\n#{date} || 100.00 ||  || 100.00")
    end
  end
end
