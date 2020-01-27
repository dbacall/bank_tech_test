require_relative '../lib/account.rb'

describe Account do

  let(:account) { Account.new }
  let (:date) { Time.now.strftime("%d/%m/%Y") }

  describe "#deposit" do
    it "adds 100 to your balance" do 
      expect(account.deposit(100)).to eq 100
    end
  end

  describe "#withdraw" do
    it "takes 50 off your balance" do
      account.deposit(100)
      expect(account.withdraw(50)).to eq 50
    end
  end

  describe "#print_statement" do
    it "returns a statement with 1 credit" do
      account.deposit(100) 
      expect(account.print_statement).to eq "date || credit || debit || balance\n#{date} || 100.00 ||  || 100.00"
    end
  end

end
