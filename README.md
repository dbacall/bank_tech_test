# Bank Tech Test

## Description

An app to mimick the system of an account in a bank. Features include:

- User can deposit into account
- User can withdraw from an account
- User can print a statement of all their deposits and withdrawals
- Statement contains the date of the transaction, the transaction and the account balance
- User cannot withdraw more than the balance in the account

## Technologies Used

- Ruby
- Rspec
- Rubocop
- Simplecov

## Approach

I started out by analysing the specifications and creating a table of classes and associated methods:

Account | Statement | Date
------- | --------- | ----
.deposit | .create_credit | .today
.withdraw | .create_debit |
.print_statement | .show |

Using this as a starting point, I then began to create the app using test driven development and the red, green, refactor cycle . I began by creating tests for the most important features first and dealt with edge cases, such as not being  
able to withdraw more than your balance, last.

## How I structured my code

My code is split up into three classes; Account, Statement and Date. I chose to split into these three classes in order to cover the user requirements whilst ensuring each class had it's own responsibility. The Account class for the user's interaction with their account, the Statement class for ensuring the correct recording of the statement, and the Day class for figuring out the right date of each transaction. Each class is then made up of methods that each contain the logic to carry out a single responsibility. I've also included some private methods where it was necessary for certain public methods to have access to, but where I did not want the user to be able to access.

## App in use

![image](https://user-images.githubusercontent.com/53436716/73201695-7deb5880-4131-11ea-937c-7304ad0f584d.png)

## How to Install

Fork this repo and then clone to your local system in your preferred directory.
Then from the terminal when inside the forked directory, run `bundle install`

## How to run tests

Within the directory, from the terminal run `rspec`

## How to run the project

Within the directory, from the terminal run `irb -r "./path/to/account.rb"`
