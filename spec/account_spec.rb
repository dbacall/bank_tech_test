require_relative '../lib/account.rb'

describe Account do

  describe "#get_balance" do
    it "initializes with a balance of 0" do
      account = Account.new
      expect(account.get_balance).to eq 0
    end
  end

  # describe "#deposit" do

  # end

end
