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