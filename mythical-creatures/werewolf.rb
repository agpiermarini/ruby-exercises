class Werewolf
  attr_reader   :name,
                :location
  attr_accessor :human,
                :hungry

  def initialize(name, location = nil, human = true, hungry = false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry
  end

  def human?
    @human
  end

  def wolf?
    !@human
  end

  def hungry?
    @hungry
  end

  def change!
    if human?
      @human = false
      @hungry = true
    else
      @human = true if wolf?
    end
  end

  def consume!(victim)
    if wolf?
      victim.status = :dead
      @hungry = false
    end
  end
end
