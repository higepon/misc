class Stack
  def initialize
    @data = []
  end

  def push(x)
    @data.push(x)
  end

  def pop
    ret = @data[@data.size - 1]
    @data.delete_at(@data.size - 1)
    return ret
  end

  def empty?
    return @data.empty?
  end

  def peek
    return @data[@data.size - 1]
  end
end

class MinStack
    # Initialize your data structure here
    def initialize
      @s1 = Stack.new
      @s2 = Stack.new
    end

    # @param {Integer} x
    # @return {Void} nothing
    def push(x)
      @s1.push(x)
      if @s2.empty?
        @s2.push(x)
      else
        y = @s2.peek
        if x <= y
          @s2.push(x)
        end
      end
    end

    # @return {Void} nothing
    def pop
      ret = @s1.pop()
      unless @s2.empty?
        y = @s2.peek
        if y == ret
          @s2.pop
        end
      end
      return ret
    end

    # @return {Integer}
    def top
      return @s1.peek
    end

    # @return {Integer}
    def get_min
      return @s2.peek
    end
end
