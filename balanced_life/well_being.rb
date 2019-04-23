require "byebug"
require_relative "emotions"
require_relative "emotional_state"
require_relative "social_state"
require_relative "mental_state"
require_relative "physical_state"

class Well_Being 
    #Goal: Emotions are balanced. 
    # Ok I tackled the small problems. 
    # Now I need to package everything into Well_Being 

    print "\nWhat is your current Physical State?\n"
    print "\nHow many hours of sleep are you getting?\n"
    input_hours = gets.chomp.to_i

    print "\nDid you eat lunch? (Y/N) \n"
    input_lunch = gets.chomp 
    if input_lunch == "Y"
        input_lunch = true 
    else
        input_lunch = false     
    end

    print "\nHow many times did you take a break?\n"
    input_break_times = gets.chomp.to_i

    print "\nDid you maintain body hygiene? (Y/N)\n"
    input_hygiene = gets.chomp 
    if input_hygiene == "Y"
        input_hygiene = true 
    else
        input_hygiene = false     
    end
    
    recharge = Physical_State.new(input_hours, input_lunch, input_break_times, input_hygiene)


    print "\nWhat is your current Emotional State?\n"
    print "\nFor each emotion, insert a number within the given range.\n"
    print "\nAnger: 0-6 Fear: 0-8 Disgust: 0-7 Sadness: 0-11 Enjoyment: 0-11 \n"
    print "\nInput answer like the following example: 6 7 5 9 10 \n"

    input = gets.chomp.split(" ").map(&:to_i)
    current_emotions = Emotions.new(input)
    current_emotions.current_stage 

    recenter = Emotional_State.new(current_emotions)
    socialize = Social_State.new(current_emotions)

    print "\nWhat is your mental state?\n"
    print "\nInput a number representing your energy\n"
    input_energy = gets.chomp.to_i 
    refocus = Mental_State.new(input_energy, current_emotions)


    until recenter.balanced?
        recenter.its_okay
        recenter.cowering 
        recenter.pat_myself_on_the_back
        recenter.encourage_each_other
        recenter.shed_tears(200)
        recenter.laugh 

        recenter.balanced        
    end

    

    puts "'We know the world only through the window of our mind. When our mind is noisy, the world is as well. And when our mind is peaceful, the world is, too. Knowing our minds is just as important as trying to change the world,' said Haemin Sunim."
end