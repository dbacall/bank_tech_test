
describe "deposit into account" do
  it "shows a deposit in the statement" do
    date = Time.now.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(100)
    expect(account.print_statement).to eq "date || credit || debit || balance\n#{date} || 100.00 ||  || 100.00"
  end
end
