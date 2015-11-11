require "spec_helper"

describe Card do
  let(:card) { Card.new('♦','2') }

  describe ".new" do
    it "should be a Card class" do
      expect(card).to be_a(Card)
    end
  end
  describe "#c_string" do
    it "should be a string '2♦'" do
      expect(card.c_string).to eq('2♦')
    end
  end
  describe "#rank" do
    it "should be a string '2'" do
      expect(card.rank).to eq('2')
    end
  end
  describe "#suit" do
    it "should be a string '♦'" do
      expect(card.suit).to eq('♦')
    end
  end
end
