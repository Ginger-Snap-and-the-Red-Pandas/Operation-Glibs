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

### STEP ONE ###
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




####Ignore the next three lines for now, proceed to STEP TWO
#################################################
##########START OF SCRIPT NUMBER __number__ !!!!!##########
#################################################


### STEP TWO ###
# Copy-and-Paste your script's name over the ENTER-SCRIPT-NAME-HERE placeholder below
# hint: don't copy over the quotation marks surrounding the placeholder

@script = Script.create!(name: "ENTER-SCRIPT-NAME-HERE", genre: @alien_genre)



### STEP THREE ###
# Copy-and-Paste your scene text over each corrsponding the ENTER-SCENE-#-DIALOGUE-HERE placeholders below
# Hint: The scene '#' tells you which scene's dialogue to use for that placeholder
# hint_two: don't copy over the quotation marks surrounding the placeholder


@scene_one = Scene.create!(script: @script, script_position: 1, dialogue: "ENTER-SCENE-ONE-DIALOGUE-HERE")
@scene_two = Scene.create!(script: @script, script_position: 2, dialogue:"ENTER-SCENE-TWO-DIALOGUE-HERE")
@scene_three = Scene.create!(script: @script, script_position: 3, dialogue:"ENTER-SCENE-THREE-DIALOGUE-HERE")


### STEP FOUR ###
# DON'T YOU FUCKING DARE FUCK WITH THE FUCKING CAPTION WORDBLANK CREATION LISTED BELOW!!! #

WordBlank.create(scene: @scene_one, scene_position: 0, word_type: "caption")

# ...did you leave it^ alone???...ARE YOU SURE?????...Good job, go on to step six



### STEP FIVE ###
# Remember your s1, s2, and s3 glib_word_types from earlier? Copy-and-Paste those arrays over the corresponding [ ENTER-GLIB-TYPES-HERE ] arrays below
# (Yes, copy it over the array itself, not just the text inside of the array)
# NOTE FOR DILLON: Ignore the code, ignore the loops, just follow these tutorial directions



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


#################################################
##########END OF SCRIPT NUMBER __number__ !!!!!##########
#################################################



### STEP SIX ###
# Alright - this is the hardest part.

# 1) Look at the script number listed at the bottom of the seed.rb file
### hint: That script's number should be an integer
# 2) Take that integer and add '1' to it. Remember the new integer you've just created
# 3) On lines 165 and 95, replace the placemarker '__number__' with your new integer

### Question: Why step number eight?
###### Answer: As more scripts appear in our seed file, the harder it will become to navigate between all the different scripts in the database. Therefore, we are indexing them in the seed for ease of access/reading



### STEP SEVEN ###

# Cool, seven's a great number.
# Now comes the fun part - you will:

# 1) Delete all comment lines from lines 100 onward inside of this script file, all the way up to the end of this document.
# HINT: A comment line is any line that start with one or more '#'
# HINT_TWO: You might want to delete these step seven instructions AFTER reading the following three steps

# 2) Copy-and-Paste lines 94-until-the-end-of-this-document into the bottom of the seed.rb file
# Hint: Line 94 starts the block where you see Start-Of-Script-Number-(number)

# 3) Profit!

# 4) Check that you deleted the step seven comments so they're not copied into the seed file, right??? Cool??? cool



###################################
##### YOU DID IT!!!! GOOD JOB #####
###################################
