require "spec_helper"

describe Hand do
  describe ".new" do
    it "should be a hand class" do
      hand = Hand.new("Player")
      expect(hand).to be_a(Hand)
    end
  end
  describe "#calculate_hand returns a score" do
    it "should calculate 2♦, J♥ , 4♥ as 16" do
      hand1 = Hand.new("Player_1")
      hand1.cards << Card.new('♦','2')
      hand1.cards << Card.new('♥','J')
      hand1.cards << Card.new('♥','4')
      expect(hand1.calculate_hand).to eq (16)
    end

    it "should calculate A♦, J♥ , 4♥ as 15" do
      hand2 = Hand.new("Player_2")
      hand2.cards << Card.new('♦','A')
      hand2.cards << Card.new('♥','J')
      hand2.cards << Card.new('♥','4')
      expect(hand2.calculate_hand).to eq (15)
    end

    it "should calculate A♦, J♥ as 21" do
      hand3 = Hand.new("Player_1")
      hand3.cards << Card.new('♦','A')
      hand3.cards << Card.new('♥','J')
      expect(hand3.calculate_hand).to eq (21)
    end
  end
end
