require 'transaction'

class Account

  attr_reader :account_id, :trnasaction_history
  attr_accessor :account_id, :transaction_history
  
  def initialize(account_id)
    @account_id = account_id
    @balance = 0
    @transaction_history = []
    @transaction_id = 0
  end

  def check_balance
    @balance
  end
  
  def deposit(amount)
    @transaction_history[@transaction_id] = Transaction.new(@balance, amount)
    @transaction_id += 1
    @balance += amount
  end

  def withdraw(amount)
    @transaction_history[@transaction_id] = Transaction.new(@balance, -amount)
    @transaction_id += 1
    @balance -= amount
  end

  def transaction_history
    @transaction_history
  end
end
