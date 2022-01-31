require "Oystercard"
describe Oystercard do
  describe "#balance" do
    it "Checks if the initial Balance is 0" do
      expect(subject.balance).to eq(0)
    end
  end
end
