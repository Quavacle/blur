class Card
    #Accessor does the job of both reader and writer in one line
    attr_accessor :rank, :suit
        #This function creates the rank and suit methods to access
        #instance variables, rather than defining long-hand as below
        #attr_reader :rank, :suit
        #Function to allow changing of variable in instance
        #attr_writer :rank, :suit
        #Initializer function declares initial, default values,
        #placeholding until redifined
        def initialize(rank, suit)
            @rank = rank
            @suit = suit
        end

        def output_card
            puts "The #{self.rank} of #{self.suit}"
        end
    #This is a 'getter,' a method to access the previously 
    #declared instance variables
    #def rank   
    #    @rank
    #end

    #Long hand method to redefine a variable
    #def rank = (rank)
    #    @rank = rank
    #

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
end

    def output
        @cards.each { |card| card.output_card }
    end

    def suitpick
        @cards.select{ |x| x[:rank] == 1 }       
 
    end

        def shuffle
            @cards.shuffle!
        end
  def deal (userchoice)
    userchoice.times {@cards.shift.output_card}
  end
end

deck = Deck.new
deck.shuffle
puts "How many cards are we dealing today?"
userchoice = gets.to_i
deck.deal(userchoice)
#puts "Select a suite, please"
#@suit_choice = gets.chomp
#deck.suitpick

