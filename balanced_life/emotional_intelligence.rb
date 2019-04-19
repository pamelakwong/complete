class Emotional_Intelligence 
    attr_reader :joy, :disgust, :sadness, :fear 
    def intialize(joy, disgust, sadness, fear)
        @joy = joy 
        @disgust = disgust 
        @sadness = sadness 
        @fear = fear 
    end

    def imposter_syndrome(overwhelming)
        return "itsokay" if overwhelming == "itsokay"
        imposter_syndrome(overwhelming[1..-1])
    end

    # or call it share your thoughts 
    def talk_to_someone

    end

    def check_emotions
        if @sadness > 50 
            return "Go do something that will lift up your emotionsr         "
        end
    end

    def release_endorphins 
        @joy += 1
    end
end
