class Hobbit

attr_reader :name
            :age
            :disposition

def initialize(name, disposition = "homebody")
    @name = name
    @age = 0
    @disposition = disposition
end

def disposition
    disposition = { "Samwise" => "homebody",
                    "Frodo" => "adventurous"}
    return disposition[@name]
end

def celebrate_birthday
    @age += 1
end

def age
    @age
end

def adult?
    @age >= 33 ? true : false
end

def old?
    @age >= 101 ? true : false
end

def has_ring?
    @name == "Frodo" ? true : false
end    

end
