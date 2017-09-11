#####BEFORE YOU BEGIN!!!#####
## Follow these steps:
# 1) Go to 'scripts_reset.rb'
# 2) Command-A (select all)
# 3) Command-C (Copy)
# 4) return to 'scripts.rb'
# 5) Command-A (select all)
# 6) Command-V (paste)
#### You have now reset to an empty canvas in scripts.rb to write your
# (un)doubtedly brilliant prose!
# ...unless you're bad at following directions. The Glibs Team isn't sure how to make them more-idiot-proof ...you've also disappointed Ginger. Way to go champ, think on that.


#####I WANT TO WRITE A SCRIPT!#####
# Good job, you made it this far. Our idiot-proof technology appears to be working, unless you skipped the previous steps. Go back, do it again, do it right!


#####WHAT IS THIS? (AKA DIRECTIONS)#####

# Really...you're asking that now? Flying by the seat of your pants we see. The GLIBS Team approves.

# Use this file to write a sample script. Then, move it to the seed file once it's written with the proper syntax


###CHEAT SHEET###

##These are Glibs placeholders, to insert into your scene dialogue##

# *title -> the user's inputted story name
# *caption -> the scene's photo caption
# *word -> any glibbed word (i.e. generated noun, verb, or adjective)

# Example Sentences with Glibs:
###"The other day I experience a *caption. It involved a *word inside of the *word. I decided to name it *title."


### HOW TO WRITE A SCRIPT ###

# STEP ONE:
#   Write your script_title, followed by the script dialogue for each scene below.

#   NOTE_ONE: Anytime you write a glib in the dialogue, (i.e. '*word' ), add that glib's word type into the Glib_Word_Types array for that scene.
# =>   You're Glib_Word_Types should end up looking like this:
### => Ex: ["noun", "noun", "adjective", "noun", "verb", "adjective"]

#   NOTE_TWO: Expect all verbs in your story to end in the suffix "-ing", because that's what the photo API returns


################
###Script Title:



################
###Scene One Dialogue:








#s1_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
# (e.g. "noun", "verb", "adjective")
################
###Scene Two Dialogue:







#s2_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
# (e.g. "noun", "verb", "adjective")
################
###Scene Three Dialogue:






#s3_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
#m(e.g. "noun", "verb", "adjective")
################
################

# STEP TWO:
# Copy-and-Paste your script's name over the ENTER-SCRIPT-NAME-HERE placeholder below

@script = Script.create!(name: "ENTER-SCRIPT-NAME-HERE", genre: @alien_genre)


# STEP THREE:
#  Copy-and-Paste the following new-script comment text into the bottom of the seed file. (The bottom is where all the code ends.)



#####START OF NEW SCRIPT!!!!!#####



# STEP FOUR:
# Copy-and-Paste your scene text into each of the Scene.create!s's dialogue sections over the ENTER-SCENE-#-DIALOGUE-HERE placeholders below

@scene_one = Scene.create!(script: @script, script_position: 1, dialogue: "ENTER-SCENE-ONE-DIALOGUE-HERE")
@scene_two = Scene.new(script: @script, script_position: 2, dialogue:"ENTER-SCENE-TWO-DIALOGUE-HERE")
@scene_three = Scene.new(script: @script, script_position: 3, dialogue:"ENTER-SCENE-THREE-DIALOGUE-HERE")

# STEP FOUR-AND-A-HALF
# Copy-and-paste the preceeding scene_creation_code into the bottom of the seed file.


# STEP FIVE:
# Don't fuck with the caption wordBlank creation below

WordBlank.create(scene: @scene_one, scene_position: 0, word_type: "caption")

# STEP FIVE-AND-A-HALF
# Copy-and-paste the preceeding wordblank_creation_code into the bottom of the seed file.


# STEP SIX:
# Remember your s1, s2, and s3 glib_word_types from earlier? Copy-and-Paste those arrays over the corresponding [ ENTER-GLIB-TYPES-HERE ] arrays below
# (Yes, copy it over the array itself, not just the text inside of it)
# NOTE FOR DILLON: Ignore the code, ignore the loops, just follow the tutorial directions


["noun", "noun", "adjective", "noun", "verb", "adjective"]

## s1 (scene_one) here:

s1_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
i = 1
s1_glib_word_types.each do |word_type|
  WordBlank.create(scene: @scene_one, scene_position: i, word_type: word_type)
  i += 1
end


## s2 (scene_two) here:

s1_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
i = 1
s1_glib_word_types.each do |word_type|
  WordBlank.create(scene: @scene_two, scene_position: i, word_type: word_type)
  i += 1
end


## s3 (scene_three) here:

s1_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
i = 1
s1_glib_word_types.each do |word_type|
  WordBlank.create(scene: @scene_three, scene_position: i, word_type: word_type)
  i += 1
end



# STEP SIX-AND-A-HALF
# Copy-and-paste the preceeding s1, s2, and s3 glib_word_types creation code into the bottom of the seed file



# STEP SEVEN
# Copy-and-paste the following end-of-script comment into the bottom of the seed file:


#####END OF NEW SCRIPT!!!!!#####



#STEP EIGHT
# Alright - this the hardest part.
# a) Copy and paste the following comment text into the bottom of the seed file

######Script Number: *script_number#####

# b) Check the script number for the preceeding script in the seed file. Your script's script number should be that integer += 1
# c) That means writing the +1 integer over '*script_number'


##### YOU DID IT!!!! GOOD JOB #####
