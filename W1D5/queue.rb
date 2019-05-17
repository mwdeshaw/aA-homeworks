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


#testing
test_queue = Queue.new
p test_queue #[]
test_queue.enqueue(1)
p test_queue #[1]
test_queue.enqueue(2)
p test_queue #[1, 2]
test_queue.enqueue(3)
test_queue.enqueue(4)
p test_queue #[1, 2, 3, 4]
test_queue.dequeue
p test_queue # [2, 3, 4]
test_queue.dequeue
test_queue.enqueue(5)
test_queue.enqueue(6)
p test_queue #[3, 4, 5, 6]
p test_queue.peek #3
test_queue.dequeue
p test_queue.peek #4
p test_queue #[4, 5, 6]