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

    it "Should fail, If Balance more than 90" do
      limit = Oystercard::LIMIT
      subject.top_up(limit)
      expect { subject.top_up 1 }.to raise_error("Balance exceeded, Limit is #{limit}")
    end  
  end
  
  describe "#deduct" do
    it "Deducts fare from balance" do
      expect(subject).to respond_to(:deduct).with(1).argument
    end
 
    it "Deducts fare from balance" do
      subject.top_up(50)
      expect { subject.deduct 3}.to change{subject.balance }.by -3
    end
    
    
  end
end
