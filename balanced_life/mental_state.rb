require_relative "emotional_state"

class Mental_State
    def self.developing
        Emotional_State.new(3, 4, 5, 6, 7)
    end

    def initialize(decision_fatigue, energy) 
        # @routine = routine 
        @decision_fatigue = decision_fatigue
        @energy = energy
        @fun_activities = ["cooking", "sports", "games", "tidy" ]
        @room = true 
        @ate = false 
    end

    def cut_down_on_making_decisions
        #outfit, places to eat
        time_capsule_closet = [["shirt", "pants"], ["dress"], ["shirt", "skirt"]]
        planned_outfits = []
        (1..5).each do |day|
            planned_outfits << time_capsule_closet.sample
        end
        planned_outfits 
    end

    def ate
        @ate = true   
    end

    def breaks 
        #lunch #afternoon 
        if @ate 
            Mental_State.developing.enjoyment += 100
        end
    end

    def weekend 
        @fun_activities.sample
        Mental_State.developing.enjoyment += 100
        @energy += 100
    end

    def tidy?()
        # Case when room is equal to inner space
        #           room is greater than inner space (or messy)
        #           room is less than inner space (or tidied)
    end

    def inner_space(tidy)
        puts "Your surroundings are a reflection of your inner space."

    end

    def anxiety 
        # see atlas of emotions for more reference between fear & anxiety
        Mental_State.developing.fear += 3
    end

    def imposter_syndrome(overwhelming)  #input: (["iamnotgoodenough" * 100] + ["itsokay"])
        return "itsokay" if overwhelming == "itsokay"
        imposter_syndrome(overwhelming[1..-1])
    end

    def half_full(state)
        if state != "half"
            @energy *= 2
            return "Energy is doubled: #{@energy}. You are optimistic"
        else
            @energy /= 2
            return "Energy is halved: #{@energy}. You are pessimistic."
        end
    end

    def existential_crisis(questioning)
        questioning = "What is life?"
        while questioning == "What is life?"
            puts "Forever wondering..."
        end
    end

end