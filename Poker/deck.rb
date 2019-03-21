require_relative "card.rb"
class Deck

  def initialize
    @unused_cards = Card.fifty_two_cards.shuffle!
    @discarded_cards = []
  end 

  def discard(cards)
    cards.each do |card|
      @discarded_cards << card 
    end 
  end 

  def distribute_cards(num)
    distributed = []
    num.times do
      distributed << @unused_cards.pop
    end
    distributed
  end 

  def replace_cards(*cards)
    raise ArgumentError.new "cannot replace more than 3 cards" if cards.length > 3 
    self.discard(cards)
    self.distribute_cards(cards.length)
  end


end