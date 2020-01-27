require_relative '../lib/account.rb'

describe Account do

  let(:account) {Account.new}

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

end
