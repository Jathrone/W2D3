require "byebug"
class Card

  SUITS = %w(Diamond, Club, Heart, Spade)
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K )

  attr_reader :suit, :value

  def self.fifty_two_cards
    card_arr = []
    SUITS.each do |suit|
      VALUES.each do |value|
        card_arr << Card.new(suit, value)
      end 
    end 
    card_arr
  end 


  def initialize(suit, value)
    @suit = suit
    @value = value 
  end 

  # def initialize(curr_suit = 0, curr_value = 0, current_hand = [])
  #   debugger
  #   @suit = SUITS[curr_suit]
  #   @value= VALUES[curr_value]
  #   current_hand << self
  #   curr_value += 1
  #   if curr_value == 13
  #     curr_value = 0
  #     curr_suit += 1
  #   end
  #   if curr_suit == 4
  #     return current_hand
  #   end
  #   return Card.new(curr_suit, curr_value, current_hand)
  # end

end 