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
end
card = []

@one = Card.new << (1, :spades)

puts card.select{|x| x[:suit] == "spades"}