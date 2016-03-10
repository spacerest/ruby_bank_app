require 'spec_helper'
require 'bank_app'

describe Bank do
  let(:bank_app){ Bank.new }

  it "creates new accounts with a default value of zero" do
    expect(bank_app.create_new_account).to eq 0
  end

#  it "each account is owned by a person" do
#  end
#  it "has individual accounts" do
#  end
#
#  it "each account is owned by a single person" do
#  end
#
#  it "each person has first and last names" do
#  end 
#
#  it "each person can open an account" do
#  end
#
#  it "each account is owned by a single person" do
#  end 
#
#  it "each new account has a default value of zero" do
#  end
#
#  it "a person can add or withdraw funds from an account" do
#  end
#
#  it "each account saves a transaction record" do
#  end
#
#  it "each transaction record includes a date, time, id, and amount of transaction" do
#  end
#
#  it "each bank has a membership history" do
#  end
#
#  it "each person can have multiple accounts" do
#  end
#
#  it "each bank can display a record of all accounts" do
#  end
#
#  it "each transaction belongs to a person" do
#  end
#
#  it "transactions are searchable by person, account, or id" do
#  end
#
#  it "transactions can be listed by date and time" do
#  end
end
