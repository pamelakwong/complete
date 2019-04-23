require "byebug"
require_relative "emotions"
class Emotional_State
    attr_reader :suppressed_feelings
    attr_accessor :surfacing
    def initialize
        @surfacing = Emotions.new(1, 2, 3, 4, 5)

        # will be in private => helper method: resurfaced_feelings 
        # use a % on sadness and put the remainder into suppressed_feelings 
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

    # What do we do when we reflect? How to express reflection without reflecting? 
    def reflect 
        balanced
    end


    #----------------------------------
    # Measure the lows and extremes of each emotion
    # Relate to The Atlas of Emotions
    # How does this radar relate to other Classes?
    # OH! MUST INCLUDE THIS METHOD IN WELL_BEING 
    def overflowing_emotions
        @surfacing.average_feeling > 8.6 
    end

    # Have to consider which negative & positive emotions are inserted into the following methods.
    # an emotion that has an exceptionally high #
    def alert
        reflect if suppressed_feelings > 10 
    end

    # an emotion that has a low # 
    def its_okay 
        encourage_each_other if @surfacing.sadness > 5
    end

    #----------------------------------

    def pat_myself_on_the_back
        @surfacing.enjoyment += 1 if alert 
        puts "You've done well. You worked hard!"
    end

    # We’re all proud of the progress you made each and every day! 
    def encourage_each_other
        @surfacing.enjoyment += 1
        puts "Keep going. Keep moving forward. What matters is taking action and putting forth the action."
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