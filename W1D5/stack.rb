class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
        self
    end 

    def pop
        raise "Stack is empty" if @stack.empty?
        @stack.pop
        self
    end

    def peek
        raise "Stack is empty" if @stack.empty?
        @stack.last
    end

    def inspect
        @stack.inspect
    end

end


#testing
# test_stack = Stack.new
# p test_stack    # []
# test_stack.push(1)
# p test_stack # [1]
# test_stack.push(2)
# test_stack.push(3)
# test_stack.push(4)
# p test_stack # [1, 2, 3, 4]
# test_stack.pop
# test_stack.pop
# p test_stack # [1, 2]
# test_stack.push(3) 
# p test_stack #[1, 2, 3]
# p test_stack.peek #3