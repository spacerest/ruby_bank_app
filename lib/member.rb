require 'account'

class Member

  attr_reader :name, :access_name, :transaction_history
  attr_accessor :name, :transaction_history

  def initialize(name)
    @name = name
    @access_name = name.join("_")
    @account_list = []
    @account_id = 0
  end

  def new_account
    @account_list[@account_id] = Account.new(@account_id)
    @account_id += 1
  end

  def get_account(account_id)
    @account_list[account_id]
  end

  def transaction_history
    history = []
    history1 = []
    @account_list.each { |j|
	history << j.transaction_history
    }
    history.each { |j|
      j.each { |i|
	history1 << i 
      }
    }
    history1
  end
    


  
end
