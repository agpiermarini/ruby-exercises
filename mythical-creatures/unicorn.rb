class Unicorn

attr_reader :name
            :color

def initialize (name, color = "white")
    @name = name
    @color = "white"
end

def color
    @color
end

def white?
    @color == "white"
end

def say(statment)
    puts "**;* #{statement} **;*"
end

end
