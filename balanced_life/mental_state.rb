require_relative "emotional_state"
require_relative "physical_state"

class Mental_State
    attr_accessor :energy, :fun_activities, :developing, :endorphins

    def initialize(energy, developing=Emotions.new([1, 1, 1, 1, 1]))
        # How do I want to implement the @routine attribute 
        # @routine = routine 

        @energy = energy
        @fun_activities = ["cooking", "playing games", "walking", "tidying"]
        
        @developing = developing 
        @endorphins = 0
    end

    def existential_crisis(questioning)
        # How to return infinite loop with whatever is passed into the parameter? 
        questioning = "What is life?"
        while questioning == "What is life?"
            puts "Forever wondering..."
        end
    end

    # a sum of all the Emotional_State attributes 
    
    def half_empty? 
        if (developing.sum / 2.0) > developing.average_feeling 
            @energy /= 2
            puts "Energy is halved: #{@energy}. You are pessimistic."
            return true 
        else
            false
        end
        
    end
    
    def half_full?
        if (developing.sum / 2.0) < developing.average_feeling 
            @energy *= 2
            puts "Energy is doubled: #{@energy}. You are optimistic"
            return true 
        else
            false 
        end 
    end

    def just_a_glass_of_water 
        if !half_empty? || !half_full?        
            puts "'The pessimist complains about the wind; the optimist expects it to change; the realist adjusts the sails,' said by William Arthur Ward."
        end
    end

    def anxiety 
        developing.surfacing.fear += 3
        inner_space 
    end

    # Pass in an attribute of Emotional State and see how I can incorporate it into this method. 
    def imposter_syndrome(overwhelming)  #input: (["iamnotgoodenough" * 100] + ["itsokay"])
        return "itsokay" if overwhelming == "itsokay"
        imposter_syndrome(overwhelming[1..-1])
    end

    def you_are_not_your_emotions
        if !developing.balanced? 
            puts "Emotions do not define you. Remember to breathe and recenter yourself"
            return true 
        end
        false 
    end

    def breathing? 
        !anxiety && you_are_not_your_emotions
    end

    def meditate 
        puts "Remember to breathe...in...out" if !breathing?
    end

    # Passes in an instance of Physical_State and accesses ate? method and take_breaks? method
    def rejuvenate(physical_state)
        @energy += 100 if physical_state.ate? && physical_state.take_breaks? 
    end

    def choose_fun_activity 
        @fun_activities.sample
    end

    def weekend 
        @energy += 100 if choose_fun_activity 
    end

    def tidy?
        choose_fun_activity == "tidying"
    end

    def inner_space
        if !tidy? 
            puts "Your surroundings are a reflection of your inner space. Try tidying if your place is a little bit chaotic. It will give you peace afterwards!" 
        else
            puts "The mind is cleared."
        end
    end
end