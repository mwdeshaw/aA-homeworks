class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
        self
    end

    def dequeue
        raise "Queue is empty" if @queue.empty?
        @queue.shift
        self
    end

    def peek
        raise "Queue is empty" if @queue.empty?
        @queue.first
    end

    def inspect
        @queue.inspect
    end

end