#####BEFORE YOU BEGIN!!!#####
## Follow these steps:
# 1) Go to 'scripts_reset.rb'
# 2) Command-A (select all)
# 3) Command-C (Copy)
# 4) return to 'scripts.rb'
# 5) Command-A (select all)
# 6) Command-V (paste)
#### You now have reset an empty canvas in scripts.rb to write your undoubtedly brilliant prose!
#...unless you're bad at following directions. The Glibs Team isn't sure how to make them more-idiot-proof ...you've also disappointed Ginger. Way to go champ, think on that.


#####I WANT TO WRITE A SCRIPT!#####
#Good job, you made it this far. Our idiot-proof technology appears to be working, unless you skipped the previous steps. Go back, do it again, do it right!


#####WHAT IS THIS? (AKA DIRECTIONS)#####

# Really...you're asking that now? Flying by the seat of your pants we see. The GLIBS Team approves.

#Use this file to write a sample script. Then, move it to the seed file once it's written with the proper syntax


###CHEAT SHEET###

##These are Glibs placemarkers, to insert into your scene dialogue##

# *title -> story's name
# *caption -> scene's photo caption
# *word -> any glibbed word (i.e. generated noun, verb, or adjective)

# Example Sentences with Glibs:
###"The other day I experience a *caption. It involved a *word inside of the *word. I decided to name it *title."


### HOW TO WRITE A SCRIPT ###
# STEP ONE:
#   Write your script_title, followed by the script dialogue for each scene below.
#   NOTE_ONE: Anytime you write a glib in the dialogue, (i.e. '*word' ), add that glib's word type into the Glib_Word_Types array for that scene.
#   NOTE_TWO: Expect all verbs in your story to end in the suffix "-ing", because that's what the photo API returns


################
###Script Title:

################
###Act One:






#Glib_Word_Types (e.g. "noun", "verb", "adjective"): []
################
###Act Two:





#Glib_Word_Types (e.g. "noun", "verb", "adjective"): []
################
###Act Three:




#Glib_Word_Types (e.g. "noun", "verb", "adjective"): []
################


# STEP TWO:
# Copy your script's name over the ENTER-SCRIPT-NAME-HERE placeholder

@script = Script.create!(name: "ENTER-SCRIPT-NAME-HERE", genre: @alien_genre)


# STEP THREE:
# Copy your scene text into each of the Scene.create!s's dialogue sections over the ENTER-SCENE-#-DIALOGUE-HERE placeholder

@scene_one = Scene.create!(script: @script, script_position: 1, dialogue: "ENTER-SCENE-ONE-DIALOGUE-HERE")
@scene_two = Scene.new(script: @script, script_position: 2, dialogue:"ENTER-SCENE-TWO-DIALOGUE-HERE")
@scene_three = Scene.new(script: @script, script_position: 3, dialogue:"ENTER-SCENE-THREE-DIALOGUE-HERE")



