
module TeamDialogue

    TeamDialogue = {
            
            "f1" => [
            "Formula 1 is the pinnacle of motorsport",
            "Lights out and away we go!",
        ],

        "red_bull" => [
            "Simply, simply lovely!",
            "Millimeter, millimeter!",
            "Childish!",
            "Push now!",
            "Box, box!",
            "Maintain delta",
            "Target lap time 1:21.3",
            "Understood",
            "Affirmative",
            "Negative"
        ],
        "mercedes" => [
            "Get in there, Lewis!",
            "George, you can win this!",
            "It's hammer time!",
            "Maintain delta",
            "Target lap time 1:21.5",
            "Push now!",
            "Box, box!",
            "Copy that",
            "Understood",
            "Affirmative"
        ],
        "ferrari" => [
            "I have the seat full of water, like, full of water.",
            "Fernando is faster than you",
            "Must be the water",
            "Box, box!",
            "Push, push, push!",
            "Maintain position",
            "Target lap time 1:22.0",
            "Copy that",
            "Understood",
            "Affirmative"
        ],
        "mclaren" => [
            "Pizza, pizza, pizza",
            "Smooth Operator!",
            "Ok, what damage do you have? Talent",
            "Box opposite",
            "Target lap time 1:22.0",
            "Push now!",
            "Maintain delta",
            "Copy that",
            "Understood",
            "Affirmative"
        ],
        "alpine" => [
            "GP2 engine! GP2… Argh!",
            "Push, push!",
            "Box, box!",
            "Maintain position",
            "Target lap time 1:23.1",
            "Copy that",
            "Understood",
            "Affirmative",
            "Negative",
            "Repeating"
        ],
        "williams" => [
            "Copy that",
            "Affirmative",
            "Negative",
            "Repeating",
            "Say again",
            "Box, box!",
            "Push now!",
            "Maintain delta",
            "Target lap time 1:24.0",
            "Understood"
        ],
        "haas" => [
            "Stay cool, stay focused",
            "Box, box!",
            "Push now!",
            "Maintain delta",
            "Target lap time 1:24.2",
            "Copy that",
            "Understood",
            "Affirmative",
            "Negative",
            "Repeating"
        ],

        "alphatauri" => [
            "Multi-21",
            "Box, box!",
            "Push, push!",
            "Copy that",
            "Target lap time 1:23.5",
            "Maintain delta",
            "Understood",
            "Affirmative",
            "Negative",
            "Repeating"
        ]
    }.freeze

    def self.get_dialogue(team_name)
        team_name = team_name.strip.downcase.gsub(" ", "_")

        dialogue = TeamDialogue[team_name]
        return nil unless dialogue

        dialogue.sample
    end

    def self.teams
        TeamDialogue.keys
    end

end
