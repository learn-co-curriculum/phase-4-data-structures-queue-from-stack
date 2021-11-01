require_relative './stack'

# your code here
class MyQueue
  def initialize
    @s1 = MyStack.new
    @s2 = MyStack.new
  end

  def add(element)
    @s1.push(element)
  end

  def peek
    @s2.push(@s1.pop) while @s1.peek
    el = @s2.peek
    @s1.push(@s2.pop) while @s2.peek
    el
  end

  def remove
    @s2.push(@s1.pop) while @s1.peek
    removed = @s2.pop
    @s1.push(@s2.pop) while @s2.peek
    removed
  end
end