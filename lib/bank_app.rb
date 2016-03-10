class Bank

  def create_new_account
    @balance = 0
  end

  def deposit_money(x)
    @balance += x
  end
    
  def check_balance
    @balance
  end
    

end
