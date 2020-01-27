require_relative '../lib/account.rb'

describe Account do

  let(:account) {Account.new}

  describe "#get_balance" do
    it "initializes with a balance of 0" do
      account = Account.new
      expect(account.get_balance).to eq 0
    end
  end

  describe "#deposit" do
    it "adds 100 to your balance" do
      account.deposit(100) 
      expect(account.get_balance).to eq 100
    end
  end

  describe "#withdraw" do
    it "takes 50 off your balance" do
      account.deposit(100)
      account.withdraw(50)
      expect(account.get_balance).to eq 50
    end
  end

end
