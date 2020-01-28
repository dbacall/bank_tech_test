# frozen_string_literal: true

require_relative '../lib/account.rb'

describe Account do
  let(:statement) do
    double :Statement,
    create_credit: 'dummy',
    create_debit: 'dummy'
  end
  let(:account) { Account.new(statement) }
  let(:date_today) { "27/01/2020" }
  let(:date_yesterday) { "26/01/2020" }
  let(:date) { double :Date, today: date_today }

  describe '#deposit' do
    it 'adds 100 to your balance' do
      expect(account.deposit(100)).to eq 100
    end
  end

  describe '#withdraw' do
    it 'takes 50 off your balance' do
      account.deposit(100)
      expect(account.withdraw(50)).to eq 50
    end

    it 'raises an error if try withdraw more than balance' do
      message = 'You do not have enough in your account to withdraw that much!'
      expect { account.withdraw(10) }.to raise_error(message)
    end
  end

  describe '#print_statement' do
    it 'returns a statement with 1 credit' do
      allow(statement).to receive(:show) {
        "date || credit || debit || balance\n#{date_today} || 100.00 ||  || 100.00"
      }
      account.deposit(100)
      expect(account.print_statement).to eq "date || credit || debit || balance\n#{date_today} || 100.00 ||  || 100.00"
    end

    it 'returns a statement with 1 credit and 1 debit' do
      allow(statement).to receive(:show) {"date || credit || debit || balance\n#{date_today} ||  || 50.00 || 50.00\n#{date} || 100.00 ||  || 100.00"}
      account.deposit(100)
      account.withdraw(50)
      expect(account.print_statement).to eq "date || credit || debit || balance\n#{date_today} ||  || 50.00 || 50.00\n#{date} || 100.00 ||  || 100.00"
    end
  end
end
