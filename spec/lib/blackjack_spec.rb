require "spec_helper"

describe Blackjack do
  let(:blackjack) { Blackjack.new }
  describe ".new" do
    it "is a Blackjack class" do
      expect(blackjack).to be_a(Blackjack)
    end
    it "should have empty hands" do
      expect(blackjack.player_hand.cards).to eq([])
      expect(blackjack.dealer_hand.cards).to eq([])
    end
  end
  describe "#deal_cards" do
    it "should have two cards in each player's hands" do
      blackjack.deal_cards
      expect(blackjack.player_hand.cards.length).to eq(2)
      expect(blackjack.dealer_hand.cards.length).to eq(2)
    end
  end
  describe "#display(arugment)" do
    it "should tell the user what cards they have" do
      hand1 = Hand.new("Player_1")
      hand1.cards << Card.new('♦','2')
      hand1.cards << Card.new('♥','J')
      hand1.cards << Card.new('♥','4')
      expect{blackjack.display(hand1)}.to output("Player_1 was dealt 2♦\nPlayer_1 was dealt J♥\nPlayer_1 was dealt 4♥\nPlayer_1 score: 16\n\n").to_stdout
    end
  end
  describe "#hit_me" do
    it "should accept an input 'stand' and return nil" do
      allow(blackjack).to receive(:gets).and_return('s')
      expect(blackjack.hit_me).to eq(nil)
    end
    it "should accept an input 'hit' and return nil" do
      allow(blackjack).to receive(:gets).and_return('h')
      allow(blackjack).to receive(:gets).and_return('s')
      expect(blackjack.hit_me).to eq(nil)
    end
  end
end
