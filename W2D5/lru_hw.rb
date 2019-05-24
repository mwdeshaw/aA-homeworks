class LRUCache
    def initialize(size)
        @size = size
        @cache = []
    end

    def count
        cache.count
    end

    def add(el)
        unless cache.include?(el)
            new_cache = cache.unshift(el)
        else
            idx = cache.index(el)
            new_cache = cache.delete_at(idx)
            new_cache.unshift(el)
        end

        slicer(new_cache)
    end

    def show
        cache.last
    end

    private
    attr_accessor :size
    attr_accessor :cache
    def slicer(cache)
        cache[0..size]
    end

  end

#testing
johnny_cache = LRUCache.new(4)
johnny_cache.add("I walk the line")
johnny_cache.add(5)
johnny_cache.count # => returns 2
johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

 [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]