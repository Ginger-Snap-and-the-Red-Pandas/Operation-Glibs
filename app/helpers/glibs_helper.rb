module GlibsHelper

#This method takes in a series of hashed words/tags, then with each word_blank creates a generated word for each one which is also attached to this instance of the story

  #Keep this before generate_glibs in calls, this stores the photos description as the FIRST generated_word for a story
  def store_scene_caption(caption, caption_word_blank, story)
    GeneratedWord.create!(word: caption, story: story, word_blank: caption_word_blank)
  end

  def generate_glibs(photo_libs, word_blanks, story)
    categorized_words = categorize_words(photo_libs)
    word_blanks.each do |word_blank|
      samples = categorized_words[word_blank.word_type]
      GeneratedWord.create!(word: samples.sample, story: story, word_blank: word_blank)
    end
  end


  def blank_glibs_for_script_show(script)
    script_scenes_dialogues = script.scene_dialogues
    script_scenes_dialogues.each do |scene_dialogue|
      scene_dialogue.sub!("*title", " your-story-title ")
      scene_dialogue.sub!("*caption", " photo-description-sentence ")
      scene_dialogue.gsub!("*word", " _____ ")
    end
    script_scenes_dialogues
  end

  def fill_glibs_for_scene_show(story, scene)
    dialogue = scene.dialogue
    generated_words = scene.word_blanks.to_ary.map!{|word_blank| word_blank.generated_words.find_by(story: story)}
    generated_words.map!{|generated_word| generated_word.word}
    caption = generated_words.shift

    dialogue.sub!("*title", story.name)
    dialogue.sub!("*caption", caption)

    generated_words.each do |word|
      glib = word.upcase
      dialogue.sub!("*word", glib)
    end
    dialogue
  end

  def fill_style_glibs_for_scene_show(story, scene)
    dialogue = scene.dialogue
    generated_words = scene.word_blanks.to_ary.map!{|word_blank| word_blank.generated_words.find_by(story: story)}
    generated_words.map!{|generated_word| generated_word.word}
    caption = generated_words.shift

    dialogue.sub!("*title", story.name)
    dialogue.sub!("*caption", caption)

    generated_words.each do |word|
      glib = word.upcase
      dialogue.sub!("*word", glib)
    end
    dialogue
  end


  private

#JJ
  def adjective_labels
    ['JJ', 'JJR', 'JJS']
  end

  def singular_noun_labels
    ['NN', 'NNP']
  end

  def plural_noun_labels
    ["NNS", 'NNPS']
  end

  def present_verb_labels
    ['VBG']
  end

# other_verbs = ['VB', 'VBD', 'VBN', 'VBZ', 'VBP']


  def categorize_words(labeled_words)
    singular_nouns_array = []
    plural_nouns_array = []
    verbs_array = []
    adjectives_array = []
    labeled_words.each do |word, type|
      singular_nouns_array << word if singular_noun_labels.include?(type)
      plural_nouns_array << word if plural_noun_labels.include?(type)
      verbs_array << word if present_verb_labels.include?(type)
      adjectives_array << word if adjective_labels.include?(type)
    end

    hashed_word_arrays = operation_save_the_words(singular_nouns_array, plural_nouns_array, verbs_array, adjectives_array)

    hash_arrays(hashed_word_arrays[:sn], hashed_word_arrays[:pn],hashed_word_arrays[:v], hashed_word_arrays[:a] )
  end

  def hash_arrays(singular_nouns, plural_nouns, verbs, adjectives)
    labeled = {}
    labeled["singular noun"] = singular_nouns
    labeled["plural noun"] = plural_nouns
    labeled["verb"] = verbs
    labeled["adjective"] = adjectives
    labeled
  end

  def operation_save_the_words(singular_nouns, plural_nouns, verbs, adjectives)
      singular_nouns = random_singular_nouns if singular_nouns.empty?
      verbs = random_verbs if verbs.empty?
      adjectives = random_adjectives if adjectives.empty?

    if plural_nouns.empty?
      plural_nouns = singular_nouns.map{|noun| noun + 's'}
    end
    {sn: singular_nouns, v: verbs, a: adjectives, pn: plural_nouns}
  end


  def noun(nouns)
    nouns.sample
  end

  def verb(verbs)
    verbs.sample
  end

  def adjective(adjectives)
    adjectives.sample
  end


  def random_singular_nouns
    ["glib", "tire iron", "hot dog", "digney", "penguin", "watermelon", "Barney the Dinosaur", "not dinosaur"]
  end

  def random_verbs
    ["glibing", "eating", "jumping", "smashing", "running", "crying", "playing", "hopping"]
  end

  def random_adjectives
    ["glibby", "purple", "red", "quick", "slow", "tall", "skinny", "chubbs", "scrawny"]
  end


end
