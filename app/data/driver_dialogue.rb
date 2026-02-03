module DriverDialogue 


    DriverDialogue = {
        "max_verstappen" => [
            "Simply, simply lovely!",
            "They gave me blue flags!",
            "Let's focus now.",
            "Box, box!",
            "Maintain pace."
        ],

        
        "lewis_hamilton" => [
            "Get in there, Lewis!",
            "I think I'm going to let him go.",
            "Leave me to it, please.",
            "My tyres are gone.",
            "We need to pick up the pace."
        ],
        
        "charles_leclerc" => [
            "I have the seat full of water, like full of water.",
            "Must be the water.",
            "Let's add that to the words of wisdom."
        ],
        "carlos_sainz" => [
            "Smooth Operator!",
            "Vamos! Best podium in my career.",
            "This is my first smooth operation in Williams."
        ],
        "lando_norris" => [
            "Ok, what damage do you have? Talent.",
            "I love you guys, thank you for everything.",
            "It's Friday then, it's Saturday... WHAT?"
        ],
        "george_russell" => [
            "Yabba dabba doo!",
            "Just let me drive!",
            "You can win this, George!"
        ],
        "daniel_ricciardo" => [
            "Pizza, pizza, pizza.",
            "And for anyone who thought I left… I never left.",
            "I like 'em vulnerable."
        ],
        "fernando_alonso" => [
            "GP2 engine! GP2!",
            "All the time you have to leave a space!",
            "No more radio for the rest of the race!"
        ],
        "valtteri_bottas" => [
            "Valtteri, it's James.",
            "Maintain position.",
            "Copy that."
        ],
        "oscar_piastri" => [
            "I'm looking forward to some maple syrup on my pancakes.",
            "Box, box!",
            "Target lap time."
        ],
        "default" => [
            "Copy that",
            "Affirmative",
            "Negative",
            "Target lap time X",
            "Maintain delta"
        ]
    }.freeze



    def self.random_for(driver_name)

        driver_name = driver_name.downcase.strip.gsub(" ", "_") # trying to make consistent 

        quotes = DriverDialogue[driver_name] || DriverDialogue["default"]

        return nil if quotes.empty?

        quotes.sample 
    end


    def self.drivers
        DriverDialogue.keys - ["default"]
    end


end



