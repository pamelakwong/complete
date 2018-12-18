# Age comes with wisdom
def wisdom(age)
    sad_memories = true
    past = 2

    wisdom = 0
    while wisdom < age
        if sad_memories 
            wisdom += past
            puts "You will get over the past. What matters is the next step you take."
        end
        sad_memories = false
    wisdom += 1
    end
    puts "You age like fine wine."
    return wisdom
end


p wisdom(24)