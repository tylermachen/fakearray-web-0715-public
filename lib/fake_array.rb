require 'pry'

class FakeArray
  attr_accessor :nums

  def initialize(*nums)
    @nums = nums
  end

  def [](num)
    @nums[num]
  end

  def each
    i = 0
    while i < @nums.length
      yield @nums[i]
      i += 1
    end
  end

  def first
    @nums.first
  end
end
