#file: Player.rb
class Player
    def initialize(name, number)    #Basically the constructor
        @name = name
        @number = number
    end
    def Name    #Returns @name, effectively the Getter.
        @name
    end
    def Number
        @number #Returns @name, effectively the Getter.
    end
end