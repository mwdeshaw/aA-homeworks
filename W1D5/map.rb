class Map
    def initialize
        @map = []
    end

    def set(key, val)
        if @map.any? { |pair| pair[0] == key }
            @map.each { |pair| pair[-1] = val if pair[0] == key }
        else
            @map << [key, val]
        end
    end

    def get(key)
        @map.each do |pair|
            return pair if pair[0] == key
        end

        raise "Map does not contain key"
    end

    def delete(key)
        @map.reject! { |pair| pair[0] == key }
    end

    def show
        p self 
    end

end