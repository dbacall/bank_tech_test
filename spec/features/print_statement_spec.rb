# frozen_string_literal: true

describe 'print statement of account' do
  it 'shows the account statement' do
    date = Time.now.strftime('%d/%m/%Y')
    account = Account.new
    account.deposit(100)
    account.withdraw(50)
    expect(account.print_statement).to eq "date || credit || debit || balance\n#{date} ||  || 50.00 || 50.00\n#{date} || 100.00 ||  || 100.00"
  end
end
