require_relative "deck"

class Player
  attr_reader :hand
  def initialize(name, deck, money = 2000)
    @deck = deck
    @hand = @deck.distribute_cards(5)
    @money = money
  end

  def render 
    @hand.each do |card|
      puts "#{card.suit}#{card.value}"
    end
    return nil
  end

  def replace_hand()
    self.render
    puts "Enter card indices to replace (e.g. 1,2,3)"
    choices = gets.chomp.split.map(&:to_i)
    discarded_cards = []
    choices.each do |i|
      discarded_cards << @hand[i]
    end
    discarded_cards.each do |card|
      @hand.delete_if {|x| x == card}
    end
    @hand += @deck.replace_cards(*discarded_cards)
  end

end