class Card
	attr_accessor :rank, :suit
	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def value
		if @rank == "jack" || @rank == "queen" || @rank == "king"
			10
		elsif @rank == "ace"
			11
		else
			@rank
		end
	end

	def output_card
		puts "#{@rank} of #{@suit} with a value of #{value()}"
	end
end


class Deck
	def initialize
		@cards = []
		@ranks = [ "2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]
		@suits = [:spades, :hearts, :diamonds, :clubs]

		@ranks.each do |rank|
			@suits.each do |suit|
				card = Card.new(rank, suit)
				@cards.push(card)
			end
		end
	end

	def deal
	 @cards.shuffle.pop(2)
    end

	def output
		@cards.each do |card|
			card.output_card
		end
	end

	def hand_value
		sum = 0
		@cards.each do |card|
			sum = sum + card.value.to_i
		end
			# find total of values for cards
			puts "Your hand value is #{sum}"
	end

end

deck = Deck.new
deck.deal
deck.output
deck.hand_value