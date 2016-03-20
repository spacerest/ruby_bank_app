require 'spec_helper'
require 'bank'

describe Bank do
  let(:bank){ Bank.new }
  @@member1 = ["ozzy", "giral"]
  @@member2 = ["mickey", "rourke"]

  it "has one member" do
    bank.new_member(@@member1)
    expect(bank.members).to eq ["ozzy_giral"]
  end

  it "has two members" do
    bank.new_member(@@member1)
    bank.new_member(@@member2)
    expect(bank.members).to eq ["ozzy_giral", "mickey_rourke"]
  end

  it "can retrieve existing members" do
    bank.new_member(@@member1)
    expect(bank.get_member(0).class).to eq Member
  end

  it "member can make an account with 0 balance" do
    bank.new_member(@@member1)
    bank.get_member(0).new_account
    expect(bank.get_member(0).get_account(0).check_balance).to eq 0
  end

  it "member can deposit in account" do
    bank.new_member(@@member1)
    bank.get_member(0).new_account
    bank.get_member(0).get_account(0).deposit(5)
    expect(bank.get_member(0).get_account(0).check_balance).to eq 5
  end
 
  it "member can withdraw from account" do
    bank.new_member(@@member1)
    bank.get_member(0).new_account
    bank.get_member(0).get_account(0).deposit(5)
    bank.get_member(0).get_account(0).withdraw(2)
    expect(bank.get_member(0).get_account(0).check_balance).to eq 3
  end

  it "deposits and withdrawals are saved in transaction history" do
    bank.new_member(@@member1)
    bank.get_member(0).new_account
    bank.get_member(0).get_account(0).deposit(1)
    expect(bank.get_member(0).get_account(0).transaction_history.class).to eq Array
  end

end
