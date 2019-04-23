require_relative "emotional_state"
require_relative "physical_state"

class Mental_State
    # def self.developing
    #     Emotional_State.new(3, 4, 5, 6, 7)
    # end
    attr_accessor :routine, :decision_fatigue, :energy, :fun_activities, :developing, :endorphins
    def initialize(routine, decision_fatigue, energy)
        # what does the routine variable do?! 
        @routine = routine 
        @decision_fatigue = decision_fatigue
        @energy = energy
        @fun_activities = ["cooking", "playing games", "walking", "tidying"]
        
        ## BECAUSE I CHANGED THE INITIALIZATION METHOD FOR EMOTIONAL STATE
        ## I MUST ADJUST HOW I USE @DEVELOPING 
        @developing = Emotional_State.new(3, 4, 5, 6, 7)
        @endorphins = 0
    end

    def existential_crisis(questioning)
        # How to return infinite loop with whatever is passed into the parameter? 
        questioning = "What is life?"
        while questioning == "What is life?"
            puts "Forever wondering..."
        end
    end

    # Pass in an instance of Emotional State and see how I can incorporate it into this method. 
    # Probably a sum of all the Emotional_State attributes 
    def half_full(state)
        if state != "half"
            @energy *= 2
            return "Energy is doubled: #{@energy}. You are optimistic"
        elsif state == "half"
            @energy /= 2
            return "Energy is halved: #{@energy}. You are pessimistic."
        else
            puts "'The pessimist complains about the wind; the optimist expects it to change; the realist adjusts the sails,' said by William Arthur Ward."
        end
    end

    # Pass in an instance of Emotional State and see how I can incorporate it into this method. 
    def anxiety 
        # see atlas of emotions for more reference between fear & anxiety
        developing.fear += 3
        inner_space 
    end

    # Pass in an attribute of Emotional State and see how I can incorporate it into this method. 
    def imposter_syndrome(overwhelming)  #input: (["iamnotgoodenough" * 100] + ["itsokay"])
        return "itsokay" if overwhelming == "itsokay"
        imposter_syndrome(overwhelming[1..-1])
    end

    def you_are_not_your_emotions
        if developing 
            puts "Emotions do not define you. Remember to breathe and recenter yourself"
        end
    end

    def breathing? 
        !anxiety && !you_are_not_your_emotions
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
        # Case when room is equal to inner space
        #           room is greater than inner space (or messy)
        #           room is less than inner space (or tidied) 
        if choose_fun_activity == "tidying"
            return inner_space = true 
        else
            return inner_space = false 
        end
        nil 
    end

    def inner_space
        puts "Your surroundings are a reflection of your inner space. Try tidying if your place is a little bit chaotic. It will give you peace afterwards!" if !tidy? 
        puts "Try meditating or exercising" if tidy?.nil? 
    end

    def cut_down_on_making_decisions
        #outfit (stick to one uniform), places to eat (go to wasabi) Or ask Mannu for good recommendations (:
        # => see social state 
        time_capsule_closet = [["shirt", "pants"], ["dress"], ["shirt", "skirt"]]
        planned_outfits = []
        (1..5).each do |day|
            planned_outfits << time_capsule_closet.sample
        end
        planned_outfits 
    end

    # still wondering how to incorporate this method
    # definitely needs to connect to Emotional_State 
    def reminisce(emotion) 
        # Memories are knowledge themselves
        # But reminiscing is iterating through an array of memories, picking that specific memory and reframing it with an emotion.
    end
end