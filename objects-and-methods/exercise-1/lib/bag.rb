require './lib/candy'
require 'pry'

class Bag
  attr_reader :count,
              :candies
  def initialize
    # @count = 0
    @candies = []
  end

  def empty?
    @candies.length == 0
  end

  def <<(candy)
    @candies << candy
  end

  def count
    @candies.length
  end

  def contains?(candy)
    @candies.each do |object|
      return object.type == candy
    end
  end
end
