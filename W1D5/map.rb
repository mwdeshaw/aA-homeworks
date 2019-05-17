class Map
    def initialize
        @map = []
    end

    def set(key, val)
        if @map.any? { |pair| pair.first == key }
            @map.each { |pair| pair.last = val if pair.first == key }
        else
            @map << [key, val]
        end

    self
    end

    def get(key)
        @map.each do |pair|
            return pair if pair.first == key
        end

        raise "Map does not contain key"
    end

    def delete(key)
        @map.reject { |pair| pair.first == key }
    end

    def show
        p self
    end

end