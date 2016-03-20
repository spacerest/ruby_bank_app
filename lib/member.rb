require 'account'

class Member

  attr_reader :name
  attr_accessor :name
  attr_reader :access_name

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
    


  
end
