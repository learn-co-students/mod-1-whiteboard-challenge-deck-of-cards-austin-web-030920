

class Card
    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

end




class Deck
    attr_accessor :cards

    RANK_MAP = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    SUIT_MAP = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []
        RANK_MAP.each do |rank|
            SUIT_MAP.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        card = @cards.sample
        @cards.delete(card)
        card
    end

end