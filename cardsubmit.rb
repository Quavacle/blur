class Card
    attr_accessor :rank, :suit   
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def output_card
        puts "The #{self.rank} of #{self.suit}"
    end

    def self.random_card
        Card.new(rand(10), :spades)
    end
end

class Deck
    def initialize
        @cards =[]
        @suit = ["spades", "diamonds", "hearts", "clubs"]
        suitcounter = 0
        4.times do 1.upto(13) do |card| 
            case 
            when card == 1
                @cards << Card.new(:ace, @suit[suitcounter])
            when card == 11
                @cards <<Card.new(:jack, @suit[suitcounter])
            when card == 12
                @cards << Card.new(:queen, @suit[suitcounter])
            when card == 13
                @cards << Card.new(:king, @suit[suitcounter])
            else
                @cards << Card.new(card, @suit[suitcounter])
            end
        end
        suitcounter+=1      
        if suitcounter == 3
            suitcounter = 0
        end
    end

    def wholedeck
        @cards.each {|card| card.output_card} end  
    end

    def shuffle
        @cards.shuffle!
    end

    def deal (userchoice)
        if userchoice <= 52
            userchoice.times {@cards.shift.output_card}
        else
            puts "Please enter a number between 1 and 52"
        end
    end
end

deck = Deck.new
deck.shuffle
puts "How many cards are we dealing today?"
userchoice = gets.to_i
deck.deal(userchoice)

