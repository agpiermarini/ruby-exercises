class Pirate

attr_reader :name
            :job
            :cursed

def initialize(name, job = "Scallywag", cursed = false)
    @name = name
    @job = job
    @cursed = cursed
    @heinous_acts = 0
    @rob_ships = true
    @booty = 0
end

def job
    @job
end

def cursed?
    @heinous_acts >= 3 ? @cursed = true : @cursed = false
    @cursed
end

def commit_heinous_act
    @heinous_acts += 1
end

def rob_ships
    @booty += 100
    @rob_ships
end

def booty
    @booty
end

end
