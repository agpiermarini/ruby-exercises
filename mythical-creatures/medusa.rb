class Medusa
    attr_reader    :name
    attr_accessor  :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
      @statues << victim
      @statues.shift if @statues.length == 4
    end

    def stoned?(victim)
        @statues.include?(victim) ? true : false
    end

end


class Person
    attr_reader :name

    def initialize(name)
        @name = name
    end
end
