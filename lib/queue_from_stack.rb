require_relative './stack'

class MyQueue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  # We use two stacks so that we can re-order the items when adding a new item, 
  # and move the added item to the bottom of the stack
  def add(value)
    # If we start with the following values before calling `#add(3)`
    # @s1: [2, 1]    @s2: []
    # First, take all the items out of @s1 and move them to @s2: 
    # @s1: []        @s2: [1, 2]
    @s2.push(@s1.pop) until @s1.empty? 
    # Next, add a new item to the now-empty @s1: 
    # @s1: [3]       @s2: [1, 2]
    @s1.push(value)
    # Finally, return all items to @s1 in the order they were removed: 
    # @s1: [3, 2, 1] @s2: []
    @s1.push(@s2.pop) until @s2.empty? 
  end

  def remove
    @s1.pop
  end

  def peek
    @s1.peek
  end
end