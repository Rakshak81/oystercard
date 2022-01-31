class Oystercard
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(recharge)
    @balance = @balance + recharge
  end

#   def balance # replaced by attr_reader
#   @balance
#   end
end
