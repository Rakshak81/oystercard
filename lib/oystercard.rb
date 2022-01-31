class Oystercard
  attr_reader :balance
  LIMIT = 90
  def initialize
    @balance = 0
  end

  def top_up(recharge)
    fail("Balance exceeded, Limit is #{LIMIT}") if @balance + recharge > LIMIT
    @balance += recharge
  end

#   def balance # replaced by attr_reader
#   @balance
#   end
end
