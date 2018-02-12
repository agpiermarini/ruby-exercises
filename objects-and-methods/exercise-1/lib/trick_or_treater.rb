require './lib/costume'
require './lib/bag'
require './lib/candy'

class TrickOrTreater
  attr_reader :costume
  attr_accessor :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    @bag.count != 0
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.candies.pop
  end
end
