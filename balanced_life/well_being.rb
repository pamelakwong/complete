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

    print "\nWhat is your current Emotional State?\n"
    print "\nFor each emotion, insert a number within the given range.\n"
    print "\nAnger: 0-6 Fear: 0-8 Disgust: 0-7 Sadness: 0-11 Enjoyment: 0-11 \n"
    print "\nInput answer like the following example: 6 7 5 9 10 \n"

    input = gets.chomp.split(" ").map(&:to_i)
    current_emotions = Emotions.new(input)
    current_emotions.current_stage 

    puts "'We know the world only through the window of our mind. When our mind is noisy, the world is as well. And when our mind is peaceful, the world is, too. Knowing our minds is just as important as trying to change the world,' said Haemin Sunim."
end