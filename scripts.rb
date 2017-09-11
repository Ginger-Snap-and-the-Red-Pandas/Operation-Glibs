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
###Script Title:


###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
###Scene One Dialogue:






#s1_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
# (e.g. "noun", "verb", "adjective")
###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
###Scene Two Dialogue:






#s2_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
# (e.g. "noun", "verb", "adjective")
###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
###Scene Three Dialogue:





#s3_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
# (e.g. "noun", "verb", "adjective")
###DO NOT USE LINE BREAKS/HIT THE RETURN KEY ANYWHERE IN YOUR SCRIPT###
################
##################

#####Ignore the next three comment lines for now, proceed to STEP TWO#####

#################################################
##########START OF SCRIPT NUMBER __number__ !!!!!##########
#################################################


### STEP TWO ###
# Copy-and-Paste your script's name over the ENTER-SCRIPT-NAME-HERE placeholder below
# Hint: don't copy over the quotation marks surrounding the placeholder

@script = Script.create!(name: "ENTER-SCRIPT-NAME-HERE", genre: @alien_genre)



### STEP THREE ###
# Copy-and-Paste your scene text over each corrsponding ENTER-SCENE-#-DIALOGUE-HERE placeholders below
# Hint: The scene '#' tells you which scene's dialogue to use for that placeholder
# Hint_two: don't copy over the quotation marks surrounding the placeholder


@scene_one = Scene.create!(script: @script, script_position: 1, dialogue: "ENTER-SCENE-ONE-DIALOGUE-HERE")
@scene_two = Scene.create!(script: @script, script_position: 2, dialogue:"ENTER-SCENE-TWO-DIALOGUE-HERE")
@scene_three = Scene.create!(script: @script, script_position: 3, dialogue:"ENTER-SCENE-THREE-DIALOGUE-HERE")


### STEP FOUR ###
# Do nothing - skip ahead to STEP FIVE
# Seriously, leave the following WordBlank alone...seriously

## DON'T YOU FUCKING DARE FUCK WITH THE FUCKING CAPTION WORDBLANK CREATION LISTED BELOW!!! ##

WordBlank.create(scene: @scene_one, scene_position: 0, word_type: "caption")

## DON'T YOU FUCKING DARE FUCK WITH THE FUCKING CAPTION WORDBLANK CREATION LISTED ABOVE!!! ##


# ...did you leave it^^^ alone???...ARE YOU SURE?????...Good job, you may proceed to step five



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

s2_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
i = 1
s2_glib_word_types.each do |word_type|
  WordBlank.create(scene: @scene_two, scene_position: i, word_type: word_type)
  i += 1
end


## s3 (scene_three) here:

s3_glib_word_types = [ ENTER-GLIB-TYPES-HERE ]
i = 1
s3_glib_word_types.each do |word_type|
  WordBlank.create(scene: @scene_three, scene_position: i, word_type: word_type)
  i += 1
end

#################################################
##########END OF SCRIPT NUMBER __number__ !!!!!##########
#################################################


### NOTE: for the upcoming directions in Steps Six and Seven, the lines specified will only be correct if you DID NOT USE LINE BREAKS IN YOUR SCRIPT ##
### otherwise -
###   line 126 is supposed to be the center of your "START OF SCRIPT NUMBER __ number__" box
###   line 200 is supposed to be the center your "END OF SCRIPT NUMBER __number__" box


### STEP SIX ###

# Alright - now comes the hardest part
#
# 1) Look at the script number listed at the bottom of the seed.rb file
### hint: That script's number should be an integer
# 2) Take that integer and add '1' to it. Remember this new integer you've just created
# 3) On lines 200 and 126 of THIS FILE, (YES, THE ONE IN WHICH YOU ARE READING THESE DIRECTIONS) - replace the placeholder, '__number__', with your fancy new integer
#
# 4) Compare the numbers you just typed into lines 200 and 126 of THIS script file:
#    - They should be the same number.
#    - If they're not the same number, repeat STEP SIX again
#
#
### Question: Why step number six?
###### Answer: As more and more scripts inexorably appear in our seed file, it will become progressively harder to navigate between all the different scripts in the database. Therefore, we are indexing the scripts inside the seed file for ease of access/reading



### STEP SEVEN ###

# Cool, seven's a great number.
# Now comes the fun part - you will:

# 1) Delete all of the directions from lines 125 onward inside of this file (scripts.rb), all the way through the end of this document.
#   DO NOT delete the "START-OF-SCRIPT" or "END-OF-SCRIPT" boxes

# HINT_ONE: Direction lines all start with one or more '#'
# HINT_TWO: DO NOT DELETE un-commented lines (i.e. lines that DO NOT begin with '#')
# HINT_THREE: You may want to delete the STEP SEVEN comment text AFTER reading the remainder of these instructions

# 2) Copy-and-Paste lines 125-until-the-end-of-this-document into the bottom of the seed.rb file
# Hint: Line 125 is the start of the block where you see Start-Of-Script-Number-(number)

# 3) Profit!

# 4) Check that you deleted the step seven comments so they're not copied into the seed file, right??? Cool??? cool



###################################
##### YOU DID IT!!!! GOOD JOB #####
###################################
