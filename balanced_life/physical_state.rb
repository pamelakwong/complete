class Physical_State
    attr_accessor :hours_of_sleep, :lunch, :breaks, :shower, :endorphins
    def initialize(hours_of_sleep, lunch, breaks, shower)
        @hours_of_sleep = hours_of_sleep
        @lunch = lunch 
        @breaks = breaks
        @shower = shower  
        @endorphins = 0
    end

    def sleep 
        raise "GET SLEEP" if hours_of_sleep <= 0 
        if hours_of_sleep > 0 && hours_of_sleep < 4
            puts "It's great that you have sleep, but get some more! (: "
        end

        if hours_of_sleep > 4 
            puts "Good job! You are getting adequate sleep!"
        end
    end

    def ate? 
        lunch
    end

    def take_breaks? 
        if !ate? || (breaks < 2) 
            puts "Remember to rest your eyes once awhile. The blue rays emitting from the screen is unhealthy. Also, give your brain a rest from working too hard! (: "
            return false 
        end
        true 
    end

    def exercise? 
        @endorphins += 100
    end

    def clean? 
        shower
    end

    def dress_up 
        #weather #temp 
    end
end