require_relative "../lib/statement.rb"

describe Statement do

  let(:statement) { Statement.new }

  describe '#create_credit' do
    it "creates a credit with a date and balance in your statement" do
      expect(statement.create_credit(100, 100)).to eq [Time.now.strftime("%d/%m/%Y"), "100.00", "", "100.00" ]
    end
  end

end
