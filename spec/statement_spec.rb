# frozen_string_literal: true

require_relative '../lib/statement.rb'

describe Statement do
  statement_spec_helper

  describe '#create_credit' do
    it 'creates a credit with a date and balance in your statement' do
      expect(statement.create_credit(100, 100)).to eq [[
        date_today, '100.00', '', '100.00'
      ]]
    end
  end

  describe '#create_debit' do
    it 'creates a debit with a date and balance in your statement' do
      expect(statement.create_debit(100, 100)).to eq [[
        date_today, '', '100.00', '100.00'
      ]]
    end
  end
end

describe Statement do
  statement_spec_helper

  describe '#show' do
    it 'returns a statement with a debit and credit on' do
      statement.create_credit(100, 100, date_today)
      statement.create_debit(50, 50, date_today)
      allow(printer).to receive(:print) {
        "date || credit || debit || balance\n" \
        "#{date_today} ||  || 50.00 || 50.00\n" \
        "#{date_today} || 100.00 ||  || 100.00"
      }
      expect(statement.show).to eq("date || credit || debit || balance\n" \
      "#{date_today} ||  || 50.00 || 50.00\n" \
      "#{date_today} || 100.00 ||  || 100.00")
    end
  end
end

describe Statement do
  statement_spec_helper
  describe '#show' do
    it 'shows transactions in reverse chronological order' do
      statement.create_credit(100, 100, date_yesterday)
      statement.create_debit(50, 50, date_today)
      allow(printer).to receive(:print) {
        'date || credit || debit || balance' \
        "\n#{date_today} ||  || 50.00 || 50.00\n#{date_yesterday} " \
        '|| 100.00 ||  || 100.00'
      }
      expect(statement.show).to eq('date || credit || debit || balance' \
      "\n#{date_today} ||  || 50.00 || 50.00\n#{date_yesterday} " \
      '|| 100.00 ||  || 100.00')
    end
  end
end
