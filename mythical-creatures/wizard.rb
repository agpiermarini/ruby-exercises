class Wizard

attr_reader :name

def initialize(name, bearded: true, rested: true)
    @name = name
    @bearded = bearded
    @rested = rested
    @spells_cast = 0
end

def bearded?
    @bearded
end

def incantation(spell)
    return "sudo #{spell}"
end

def rested?
    @rested = @spells_cast <= 2 ? true : false
end

def cast
    @spells_cast += 1
    p "MAGIC MISSILE!"
end

end
