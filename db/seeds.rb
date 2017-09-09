# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





# "I saw a #{@scene.word_blanks[0]}"

# @scene = final_draft(scene)


# word_blanks[0].generated_words.where(story: @story)


# "I saw a <%=@story.word_blanks[0].generated_words.where(story: @story)%>"



# "I saw a #{@scene.word_blanks[0]}"



"I saw a #{@scene.word_blanks[0].where(story_id: @story.id)}"

"<%= @caption %>"
