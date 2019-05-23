#very_hungry octopus

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

#sluggish_octopus
def sluggish_octopus(arr)
    longest = ""

    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            if arr[i].length > arr[j].length
                longest = arr[i]
            end
        end
    end

    longest
end
# p sluggish_octopus(fish)


#dominant_octopus
def dominant_octopus(arr)
    return arr if arr.length <= 1

    pivot = arr.shift
    left = []
    right = []

    arr.each do |ele|
        if ele.length < pivot.length
            left << ele
        else
            right << ele
        end
    end
   dominant_octopus(left) + [pivot] + dominant_octopus(right)
end
# p dominant_octopus(fish)[-1]


#clever octopus
def clever_octopus(arr)
    longest = ""
    arr.each do |fish|
        if fish.length > longest.length
            longest = fish
        end
    end

    longest
end
# p clever_octopus(fish)



#dancing octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

#slow_dance
def slow_dance(direction, arr)
    arr.each_with_index do |move, i|
        if direction == move
            return i
        end
    end
end
# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)


#fast_dance
new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
    }

def fast_dance(direction, hash)
    hash[direction]
end
# p fast_dance("up", new_tiles_data_structure)
# p fast_dance("right-down", new_tiles_data_structure)

