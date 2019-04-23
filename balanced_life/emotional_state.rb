require "byebug"
require_relative "emotions"
class Emotional_State
    attr_reader :suppressed_feelings
    attr_accessor :surfacing
    def initialize(surfacing = Emotions.new)
        @surfacing = surfacing

        # will be in private => helper method: resurfaced_feelings 
        @suppressed_feelings = 0 
    end

    def balanced
        @surfacing.anger = 0 
        @surfacing.fear = 0 
        @surfacing.disgust = 0 
        @surfacing.sadness = 0 
        @surfacing.enjoyment = 0 
    end

    def balanced? 
        @surfacing.average_feeling == 0.0 
    end

    def imbalanced_feelings?
        @surfacing.average_feeling < 8.6 
    end

    def reflect 
        balanced
    end

    def alert
        reflect if suppressed_feelings > 10 
    end

    def overflowing_emotions
        @surfacing.average_feeling > 5.0 
    end

    def its_okay 
        encourage_each_other if overflowing_emotions
    end

    def pat_myself_on_the_back
        @surfacing.enjoyment += 1 if alert 
        puts "You've done well. You worked hard!"
    end

    # We’re all proud of the progress you made each and every day! 
    def encourage_each_other
        @surfacing.enjoyment += 1
        puts "What matters is taking action! Keep going. Keep moving forward."
    end

    def shed_tears(tears)
        # Must increment endorphins in Physical_State Class. 
        puts "You have shed tears. It is okay to cry. When you cry you also release endorphins."
        if @surfacing.sadness + tears >= 11 
            @suppressed_feelings += (@surfacing.sadness + tears) % 11
        end
        @surfacing.sadness = 11
        @surfacing.enjoyment += 1
    end 

    def laugh 
        @surfacing.enjoyment += 1
    end

    def cowering 
        @suppressed_feelings += 1
    end
end