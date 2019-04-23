require_relative "emotions"
class Emotional_State
    def initialize
        @surfacing = Emotions.new(1, 2, 3, 4, 5)

        # will be in private => helper method: resurfaced_feelings 
        @suppressed_feelings = 0 
    end

    def imbalanced_feelings?
        @surfacing.average_feeling < 8.6 
    end

    #----------------------------------
    # Measure the lows and extremes of each emotion
    # Relate to The Atlas of Emotions
    # How does this radar relate to other Classes?
    # OH! MUST INCLUDE THIS METHOD IN WELL_BEING 
    def radar 

    end

    # Have to consider which negative & positive emotions are inserted into the following methods.
    # an emotion that has an exceptionally high #
    def alert

    end

    # an emotion that has a low # 
    def okay 
        
    end

    #----------------------------------
    # Use #radar, #alert, #okay to justify and define the methods below 

    def pat_myself_on_the_back
        @enjoyment += 11
        puts "You've done well. You worked hard!"
    end

    # We’re all proud of the progress you made each and every day! 
    def encourage 
        @enjoyment += 12
        puts "Keep going. Keep moving forward. What matters is taking action and putting forth the action."
    end

    # What do we do when we reflect? How to express reflection without reflecting? 
    def reflect 
        @anger -= 11
        @fear -= 11
        @disgust -= 11
        @sadness -= 101
        @enjoyment += 1
    end

    def shed_tears 
        # Must increment endorphins in Physical_State Class. 
        puts "You have shed tears. It is okay to cry. When you cry you also release endorphins."
        @sadness -= 11
        @enjoyment += 1

    end 

    def laugh 
        @enjoyment += 12
    end

    def suppresing_feelings
        @suppressed_feelings += 1
    end
end