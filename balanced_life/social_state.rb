require_relative "emotional_state"

class Social_State
    attr_reader :emotional_state, :network
    def initialize(emotional_state = Emotional_State.new)
        @network = {}
        @emotional_state = emotional_state
    end

    def make_friends(friend)
        @network[friend] = true 
    end

    def converse 
        emotional_state.laugh 
    end

    def help_others 
        emotional_state.encourage_each_other
    end

    def voice_vulnerability 
        if emotional_state.cowering 
            puts "Reach out to someone. You are not alone."
        end
    end

end