# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# TEAM GLIB NOTES:
# HOW TO WRITE A SCRIPT-SEED

# Step One: Write your sample script inside of the scripts.rb file...trust us, that will make this shit easier moving forward.
# .....fill this once we know
Story.destroy_all
Script.destroy_all
GeneratedWord.destroy_all
Picture.destroy_all
Genre.destroy_all
Scene.destroy_all
WordBlank.destroy_all

@alien_genre = Genre.create!(genre_name: "Alien")
@script = Script.create!(name: "Test Script", genre: @alien_genre)

@scene_one = Scene.create!(script: @script, script_position: 1, dialogue: "On my most recent exploration mission of planet Terra, I learned about something called...*title.
The first thing I encountered was *caption.
It appears that these things called *word enjoy *word into and around *word.
A *word detected me, so I escaped a *word and changed position.")
# @scene_two = Scene.new(script: @script, script_position: 2, dialogue:)
# @scene_three = Scene.new(script: @script, script_position: 3, dialogue:)


WordBlank.create(scene: @scene_one, scene_position: 0, word_type: "caption")
WordBlank.create(scene: @scene_one, scene_position: 1, word_type: "noun")
WordBlank.create(scene: @scene_one, scene_position: 2, word_type: "verb")
WordBlank.create(scene: @scene_one, scene_position: 3, word_type: "noun")
WordBlank.create(scene: @scene_one, scene_position: 4, word_type: "noun")
WordBlank.create(scene: @scene_one, scene_position: 5, word_type: "noun")







# "I saw a #{@scene.word_blanks[0]}"

# @scene = final_draft(scene)


# word_blanks[0].generated_words.where(story: @story)


# "I saw a <%=@story.word_blanks[0].generated_words.where(story: @story)%>"



# "I saw a #{@scene.word_blanks[0]}"




