class Emotional_State
    attr_accessor :anger, :fear, :disgust, :sadness, :enjoyment
    def initialize(anger, fear, disgust, sadness, enjoyment)
        @anger = anger 
        @fear = fear 
        @disgust = disgust 
        @sadness = sadness 
        @enjoyment = enjoyment 

        # will be in private 
        @suppressed_feelings = 0 
    end

    def pat_myself_on_the_back
        @enjoyment += 11
    end

    def encourage 
        @enjoyment += 12
    end

    def reflect 
        @anger -= 11
        @fear -= 11
        @disgust -= 11
        @sadness -= 101
        @enjoyment += 1
    end

    def imbalanced_feelings?
        sum = @anger + @fear + @disgust + @sadness + @enjoyment 
        avg = sum / 5.0 
        avg > 50 ? "take a break" : shed_tears 
    end

    def shed_tears 
        # Must increment endorphins in social_state 
        puts "You have shedded tears. It is okay to cry. When you cry you also release endorphins."
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