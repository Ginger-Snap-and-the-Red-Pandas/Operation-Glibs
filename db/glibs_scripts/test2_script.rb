@script = Script.create!(name: "Test Script 2", genre: @alien_genre)


@scene_one = Scene.create!(script: @script, script_position: 1, dialogue: "On my most recent exploration mission of planet Terra, I learned about something called...*title.
The first thing I encountered was *caption.
It appears that these things called *word enjoy *word into and around *word.
A *word detected me, so I escaped a *word and changed position.")
@scene_two = Scene.create!(script: @script, script_position: 2, dialogue:"Next, my Terra-nalyzer detected *caption.
It appears that *word like *word *word.")
@scene_three = Scene.create!(script: @script, script_position: 3, dialogue: "Finally, the Gleep Glops back at the lab were excited to learn
that, when a *word sees a *word, *word occurs on all the *word.
Who would have guessed that *caption would provide so much data?!?
That concludes my presentation of *title.  Questions?")


WordBlank.create(scene: @scene_one, scene_position: 0, word_type: "caption")
WordBlank.create(scene: @scene_one, scene_position: 1, word_type: "noun")
WordBlank.create(scene: @scene_one, scene_position: 2, word_type: "verb")
WordBlank.create(scene: @scene_one, scene_position: 3, word_type: "noun")
WordBlank.create(scene: @scene_one, scene_position: 4, word_type: "noun")
WordBlank.create(scene: @scene_one, scene_position: 5, word_type: "noun")

WordBlank.create(scene: @scene_two, scene_position: 0, word_type: "caption")
WordBlank.create(scene: @scene_two, scene_position: 1, word_type: "noun")
WordBlank.create(scene: @scene_two, scene_position: 2, word_type: "verb")
WordBlank.create(scene: @scene_two, scene_position: 3, word_type: "noun")

WordBlank.create(scene: @scene_three, scene_position: 0, word_type: "caption")
WordBlank.create(scene: @scene_three, scene_position: 1, word_type: "noun")
WordBlank.create(scene: @scene_three, scene_position: 2, word_type: "noun")
WordBlank.create(scene: @scene_three, scene_position: 3, word_type: "verb")
WordBlank.create(scene: @scene_three, scene_position: 4, word_type: "noun")