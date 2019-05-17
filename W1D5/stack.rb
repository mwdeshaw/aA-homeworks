class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el

        self
    end 

    def pop
        raise "Stack is empty" if self.empty?
        @stack.pop

        self
    end

    def peek
        raise "Stack is empty" if self.empty?
        return @stack.last
    end

end
