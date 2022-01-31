require "Oystercard"
describe Oystercard do
  describe "#balance" do
    it "Checks if the initial Balance is 0" do
      expect(subject.balance).to eq(0)
    end
  end

  describe "#top_up" do
    it "Tops up the card" do
      expect(subject).to respond_to(:top_up).with(1).argument
    end

    it "Tops up the card and returns the new Balance" do
      expect { subject.top_up(5) }.to change { subject.balance }.by(5)
    end
  end
end
