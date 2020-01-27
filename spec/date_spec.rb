require_relative '../lib/date.rb'

describe Date do

  describe "#today" do
    it "returns the date today" do
      date = Date.new
      expect(date.today).to eq "#{Time.now.strftime("%d/%m/%Y")}"
    end
  end

end
