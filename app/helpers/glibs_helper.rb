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


  private

  def adjective_labels
    ['JJ', 'JJR', 'JJS']
  end

  def noun_labels
    ['NN', 'NNP', 'NNPS', 'NNS']
  end

  def present_verb_labels
    ['VBG']
  end

  def categorize_words(labeled_words)
    nouns_array = []
    verbs_array = []
    adjectives_array = []
    labeled_words.each do |word, type|
      nouns_array << word if noun_labels.include?(type)
      verbs_array << word if present_verb_labels.include?(type)
      adjectives_array << word if adjective_labels.include?(type)
    end
    hash_arrays(nouns_array, verbs_array, adjectives_array)
  end

  def hash_arrays(nouns, verbs, adjectives)
    labeled = {}
    labeled["noun"] = nouns
    labeled["verb"] = verbs
    labeled["adjective"] = adjectives
    labeled
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

# other_verbs = ['VB', 'VBD', 'VBN', 'VBZ', 'VBP']

end
