###############################
##### BEFORE YOU BEGIN!!! #####
###############################

## Follow these steps:
# 1) Go to 'scripts_reset.rb'
# 2) Command-A (select all)
# 3) Command-C (Copy)
# 4) return to 'scripts.rb'
# 5) Command-A (select all)
# 6) Command-V (paste)
#### You have now reset to an empty canvas in scripts.rb to write your
# (un)doubtedly brilliant prose!

## ...unless you're bad at following directions. The Glibs Team isn't sure how to make them more-fool-proof ...you've also disappointed Ginger. Way to go champ, think on that.



#####################################
##### I WANT TO WRITE A SCRIPT! #####
#####################################

## Cool, happy to see your enthusiasm.
## And good job on making it this far.
## Our fool-proof technology appears to be working, unless you skipped the previous steps listed in "BEFORE YOU BEGIN." If you haven't followed them - go back, do it again, do it right!

###############################
######## WHAT IS THIS? ########
##### (AKA "DIRECTIONS") ######
###############################

## Really...you're asking that now? Flying by the seat of your pants, we see. The GLIBS Team approves.

## You'll use this file to write a sample script.
## By following these directions, you should end up with the proper syntax.
## Finally, you'll move that script into the seed file.
## Don't worry - the directions below will tell you exactly what to copy and paste into the seeds.rb file.
## After all, what could possibly go wrong?

## (Other than you screwing up our seed file, thereby placing bad data inside our database...)
## ...which then takes us hours to repair because you couldn't follow these complicated 'simple' directions...
## ...after which a child cries, because their perfect story pops out awful narrative...
## ...thereby turning off the up-and-coming-next-once-in-a-lifetime-brilliant-photographer from even beginning a career in photography.)

## Yeah, other than that whole thing ^ - what could possibly go wrong? Happy writing!



#######################
##### CHEAT SHEET #####
#######################

##The following are glibs placeholders, which are used to later insert random words into your scene dialogue for the adoring masses. ##

# *title    -> the user's inputted story name
# *caption  -> the scene_photo's caption (i.e. a descriptive sentence about the picture chosen)
# *word     -> any randomly glibbed word (i.e. generated noun, verb, or adjective)

# Example Sentences with Glibs:
###"The other day I witnessed a *caption. It involved a *word inside of the *word. I decided to name it *title."


#################################
##### HOW TO WRITE A SCRIPT #####
#################################


### STEP ONE ###
#   Write your script_title, followed by the script dialogue for each of the scenes listed below it.
##  Each scene should consist of 2 to 4 sentences in length.
#
#
#   IMPORTANT NOTE:
##    Anytime you write a glib in the dialogue (i.e. '*word' ), add that glib's word type into the  Glib_Word_Types array for that scene.
#
# You're glib_word_types should ultimately end up looking something like this -
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
#
#
#   LESS IMPORTANT NOTE: Expect all verbs in your story to end in the suffix "-ing", because that's what the photo API returns.

##################
################
script_title = " Badgers "



################
################
###Scene One Dialogue (Write it inside the quotation marks):
scene_one_dialogue = " Walking in the woods one day, I saw a *word that was *caption. "





#Write your glib-word-tyoes in the array below (e.g. "noun", "verb", or "adjective")
s1_glib_word_types = [ "noun" ]
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
################
################
###Scene Two Dialogue (Write it inside the quotation marks):
scene_two_dialogue = " The *word *word *word up to a *caption. I screamed! "





#Write your glib-word-tyoes in the array below (e.g. "noun", "verb", or "adjective")
s2_glib_word_types = [ "noun", "adverb", "verb" ]
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
################
################
###Scene Three Dialogue (Write it inside the quotation marks):
scene_three_dialogue = " What could a poor *caption like me do in this *word *word? "




#Write your glib-word-tyoes in the array below (e.g. "noun", "verb", or "adjective")
s3_glib_word_types = [ "adjective", "noun" ]
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
################
################


##### FINAL STEP #####
# write an .rb file in glibs_scripts (it's a folder inside the db folder)
# Name the rb file 'YOUR-SCRIPT-TITLE'.rb
# Copy and paste ALL of the contents in this script rb into your new file
# Good job!




#################################################
############ !!!!!!STOP!!!!!!! ##################
########## IGNORE ALL LINES AFTER THIS ##########
########## YOUR SCRIPT WRITING IS DONE ##########
#################################################
#################################################



#############################################
##### Seriously, you're done, good job! #####
############### Now go away #################
#############################################




#################################################
########## START OF SCRIPT CREATION #############
#################################################



script = Script.create!(name: script_title, genre: @alien_genre)

scene_one = Scene.create!(script: script, script_position: 1, dialogue: scene_one_dialogue)
scene_two = Scene.create!(script: script, script_position: 2, dialogue: scene_two_dialogue)
scene_three = Scene.create!(script: script, script_position: 3, dialogue: scene_three_dialogue)

WordBlank.create(scene: scene_one, scene_position: 0, word_type: "caption")


i = 1
s1_glib_word_types.each do |word_type|
  WordBlank.create(scene: scene_one, scene_position: i, word_type: word_type)
  i += 1
end


i = 1
s2_glib_word_types.each do |word_type|
  WordBlank.create(scene: scene_two, scene_position: i, word_type: word_type)
  i += 1
end


i = 1
s3_glib_word_types.each do |word_type|
  WordBlank.create(scene: scene_three, scene_position: i, word_type: word_type)
  i += 1
end