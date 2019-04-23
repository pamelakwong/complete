require_relative "emotional_state"

class Social_State
    attr_reader :situation, :network
    def initialize(situation = Emotional_State.new)
        @network = {}
        @situation = situation
    end

    # Pass in friend "name" and Emotional_State instance 
    def make_friends(friend, emotional_state)
        network[friend] = emotional_state 
    end

    def converse 
        situation.laugh 
    end

    def help_others 
        # two situations 
        # if situation is low
        # if friend's emotional_state is low, too and increase that particular emotion
        network.each do |friend, f_emotional_state|
            situation.encourage_each_other if f_emotional_state.imbalanced_feelings? 
        end
    end

    def voice_vulnerability 
        if situation.cowering 
            puts "Reach out to someone. You are not alone. Afterwards, let it go and laugh it out. Why?"
        end
        situation.laugh 
    end

end