class Transaction

  attr_reader :transaction_id
  attr_accessor :transaction_id

  def initialize(balance, change)
    @balance = balance
    @change = change
    @time = Time.now.strftime("%Y%m%d")
  end

end
