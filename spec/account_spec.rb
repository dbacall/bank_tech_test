require_relative '../lib/account.rb'

describe Account do

  # before(:each) do
  #   account = Account.new
  # end

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

end
