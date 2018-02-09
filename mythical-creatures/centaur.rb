class Centaur
  attr_reader :name

  def initialize(name, horse_breed, cranky = false, standing = true)
    @name = name
    @horse_breed = horse_breed
    @cranky = cranky
    @standing = standing
    @rested = false
    @sick = false
    @count = 0
  end

  def shoot
    return "NO!" if cranky? || laying?
    @count += 1
    "Twang!!!"
  end

  def run
    return "NO!" if cranky? | laying?
    @count += 1
    "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky = true if @count >= 3
  end

  def standing?
    @standing
  end

  def breed
    @horse_breed
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def sleep
    return "NO!" if standing?
    @count = 0
  end

  def stand_up
    @standing = true
  end

  def drink
    return "NO!" if laying?
    return "Eghsjkldf" if rested?
    @rested = true
  end

  def rested?
    @rested
  end

  def sick?
    @sick = true
  end

end
