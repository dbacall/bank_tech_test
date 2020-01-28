# frozen_string_literal: true

describe 'withdraw from account' do
  it 'shows a debit followed by a credit in the statement' do
    date = Time.now.strftime('%d/%m/%Y')
    account = Account.new
    account.deposit(100)
    account.withdraw(50)
    expect { account.print_statement }.to output("date || credit || debit || balance\n#{date} ||  || 50.00 || 50.00\n#{date} || 100.00 ||  || 100.00\n").to_stdout
  end
end
