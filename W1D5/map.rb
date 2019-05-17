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

#testing
my_map = Map.new
my_map.set("k1", 1)
my_map.show
my_map.set("k2", 2)
my_map.set("k3", 3)
my_map.show
my_map.set("k2", 3)
p my_map.get("k2")
my_map.show
my_map.get("k3")
my_map.delete("k3")
my_map.show