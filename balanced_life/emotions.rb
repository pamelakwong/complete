class Emotions 
# Defined stages for each emotion are derived from the website The Atlas of Emotions supported by Dalai Lama     

    # annoyance, frustration, exasperation, argumentativeness, bitterness, vengefulness, fury
    ANGER_STAGES = {
        1 => "annoyance", 
        2 => "frustration", 
        3 => "exasperation",
        4 => "argumentativeness", 
        5 => "bitterness", 
        6 => "fury"
    }

    # trepidation, nervousness, anxiety, dread, desperation, panic, horror, terror
    FEAR_STAGES = {
        1 => "trepidation", 
        2 => "nervousness", 
        3 => "anxiety",
        4 => "dread", 
        5 => "desperation", 
        6 => "panic",
        7 => "horror", 
        8 => "terror"
    }

    # dislike, aversion, distaste, repugnance, revulsion, abhorrence, loathing
    DISGUST_STAGES = {
        1 => "dislike", 
        2 => "aversion", 
        3 => "distaste",
        4 => "repugnance", 
        5 => "revulsion", 
        6 => "abhorrence",
        7 => "loathing", 
    }

    # disappointment, discouragement, distraughtness, resignation, helplessness, hopelessness, misery, despair, grief, sorrow, anguish
    SADNESS_STAGES = {
        1 => "disappointment", 
        2 => "discouragement", 
        3 => "distraughtness",
        4 => "resignation", 
        5 => "helplessness", 
        6 => "hopelessness",
        7 => "misery", 
        8 => "despair", 
        9 => "grief", 
        10 => "sorrow", 
        11 => "anguish"    
    }

    # sensory pleasure, rejoicing, compassion/joy, amusement/schadenfreude, relief, peace, fiero, pride, naches, wonder, excitement, ecstasy
    ENJOYMENT_STAGES = {
        1 => "sensory pleasure", 
        2 => "rejoicing", 
        3 => "compassion/joy",
        4 => "amusement/schadenfreude", 
        5 => "relief", 
        6 => "peace",
        7 => "fiero", 
        8 => "pride", 
        9 => "naches", 
        10 => "wonder", 
        11 => "excitement"  
    }

    def self.anger_stages 
        ANGER_STAGES.keys 
    end

    def self.fear_stages 
        FEAR_STAGES.keys 
    end

    def self.disgust_stages 
        DISGUST_STAGES.keys 
    end

    def self.sadness_stages 
        SADNESS_STAGES.keys 
    end

    def self.enjoyment_stages 
        ENJOYMENT_STAGES.keys 
    end

    attr_accessor :anger, :fear, :disgust, :sadness, :enjoyment
    def initialize(anger, fear, disgust, sadness, enjoyment)
        raise "not in range" if !Emotions.anger_stages.include?(anger) || !Emotions.fear_stages.include?(fear) || !Emotions.disgust_stages.include?(disgust) || !Emotions.disgust_stages.include?(disgust) || !Emotions.sadness_stages.include?(sadness) || !Emotions.enjoyment_stages.include?(enjoyment)

        @anger = anger 
        @fear = fear 
        @disgust = disgust 
        @sadness = sadness 
        @enjoyment = enjoyment 
    end

    def average_feeling
        sum = anger + fear + disgust + sadness + enjoyment 
        avg = sum / 5.0 
    end

    def current_stage
        puts "Anger: #{anger} "
        puts "Fear: #{fear} "
        puts "Disgust: #{disgust} "
        puts "Sadness: #{sadness} "
        puts "Enjoyment: #{enjoyment} "
    end
end