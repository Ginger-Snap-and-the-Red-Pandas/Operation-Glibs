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
## Our fool-proof technology appears to be working, unless you skipped the previous steps listed in "BEFORE YOU BEGIN". If you haven't followed them - Go back, do it again, do it right!

###############################
######## WHAT IS THIS? ########
##### (AKA "DIRECTIONS") ######
###############################

## Really...you're asking that now? Flying by the seat of your pants we see. The GLIBS Team approves.

## You'll use this file to write a sample script.
## By following these directions, you should end up with the proper syntax
## Finally, you'll move that script into the seed file.
## Don't worry - the directions below will tell you exactly what to copy and paste into the seeds.rb file
## After all, what could possibly go wrong?

## (Other than you screwing up our seed file, thereby placing bad data inside our database...)
## (...which then takes us hours to repair because you couldn't follow these complicated 'simple' directions...)
## (...after which a child cries, because their perfect story pops out awful narrative)
## (...thereby turning off the up-and-coming-next-once-in-a-lifetime-brilliant-photographer from even beginning a career in photography)

## Yeah, other than that whole thing ^ - what could possibly go wrong? Happy writing!



#######################
##### CHEAT SHEET #####
#######################

##The following are glibs placeholders, which are used to later insert random words into your scene dialogue for the adoring masses ##

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
##  Please don't use the enter button/line breaks while writing dialogue.
##  Each scene should consist of 2-to-4 sentences in length.
#
#
#   IMPORTANT_NOTE:
##    Anytime you write a glib in the dialogue, (i.e. '*word' ), add that glib's word type into the  Glib_Word_Types array for that scene.
#
# You're glib_word_types should ultimately end up looking something like this -
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
#
#
#   LESS_IMPORTANT_NOTE: Expect all verbs in your story to end in the suffix "-ing", because that's what the photo API returns

##################
################
script_title = " SCRIPT ZEROTH "




###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
###Scene One Dialogue (Write it inside the quotation marks):
scene_one_dialogue = "On my most recent exploration mission of planet Terra, I learned about something called...*title.
The first thing I encountered was *caption.
It appears that these things called *word enjoy *word into and around the *word.
A *word detected me, so I escaped using a *word and changed position."





#Write your glib-word-tyoes in the array below (e.g. "noun", "verb", or "adjective")
s1_glib_word_types = [ "plural noun", "verb", "singular noun", "singular noun", "singular noun" ]
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
################
###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
###Scene Two Dialogue (Write it inside the quotation marks):
scene_two_dialogue = "Next, my Terra-nalyzer detected *caption.
It appears that *word like *word *word."





#Write your glib-word-tyoes in the array below (e.g. "noun", "verb", or "adjective")
s2_glib_word_types = [ "plural noun", "verb", "plural noun" ]
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
################
###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
###Scene Three Dialogue (Write it inside the quotation marks):
scene_three_dialogue = "Finally, the Gleep Glops back at the lab were excited to learn that, when a *word sees a *word, *word occurs on the *word.
Who would have guessed that *caption would provide so much data?!?
That concludes my presentation of *title.  Questions?"




#Write your glib-word-tyoes in the array below (e.g. "noun", "verb", or "adjective")
s3_glib_word_types = [ "singular noun", "singular noun", "verb", "singular noun" ]
# ex:  s#_glib_word_types = ["noun", "noun", "adjective", "noun", "verb", "adjective"]
################
##################


#################################################
############ STOP!!!!!!! ########################
########## IGNORE ALL LINES AFTER THIS ##########
########## YOUR SCRIPT WRITING IS DONE ##########
#################################################
#################################################



#############################################
##### Seriously, you're done, good job! #####
############### Now go away #################
#############################################





#####Ignore the next three comment lines for now, proceed to STEP TWO#####


#################################################
##########START OF SCRIPT CREATION###############
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

WordBlank.create(scene: scene_two, scene_position: 0, word_type: "caption")


i = 1
s2_glib_word_types.each do |word_type|
  WordBlank.create(scene: scene_two, scene_position: i, word_type: word_type)
  i += 1
end

WordBlank.create(scene: scene_three, scene_position: 0, word_type: "caption")


i = 1
s3_glib_word_types.each do |word_type|
  WordBlank.create(scene: scene_three, scene_position: i, word_type: word_type)
  i += 1
end
