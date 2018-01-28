class Dragon

attr_reader :name
            :color
            :rider

def initialize(name, color, rider, hungry = true)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
    @eat = 0
end

def name
    @name
end

def rider
    @rider
end

def color
    @color
end

def hungry?
    @eat == 3 ? @hungry = false : @hungry
end

def eat
    @eat += 1
end

end
