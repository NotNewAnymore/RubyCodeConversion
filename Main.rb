require_relative 'Player'

class String    #Let's change how strings work so they do what I want to. Thanks, internet!
    def initial
      self[0]
    end
  end
  
players = Array.new(
    [
        Player.new("James",0),
        Player.new("Johnathan",1),
        Player.new("Jerry",2),
        Player.new("Kimball",3),
        Player.new("Charles",4)
    ]
)
loop do
puts "Select an option:\n1. Print all names \n2. Print even numbered names \n3. Get names that start with a letter of your choosing \n4. Add a player \n5. Close Program"
choice = gets   #Gets is like Console.REadLine
case choice
when "1\n"
    players.each do |i|     #Loop - number.each
        puts "#{i.Name}, #{i.Number}"
    end
when "2\n"
    i = 0
    players.length.times{
    if i%2 == 0
        puts "#{players[i].Name}, #{players[i].Number}"
    end    
    i += 1
    }
when "3\n"
    puts "Get names that start with:"
    letter = gets
    players.each do |i|
        if i.Name.initial == letter.initial #I could also use i.Name[0]. And in effect, I am, but I added it to String.
        puts "#{i.Name}, #{i.Number}"
    end
    end
when "4\n"
    puts "player name:"
    pName = gets.strip
    puts "player number:"
    pNumber = Integer(gets)
    players.push(Player.new(pName,pNumber))
    puts "Added player #{players[-1].Name}"
when "5\n"
    exit
end
end