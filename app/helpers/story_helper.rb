module StoryHelper

#This method takes in a series of hashed words/tags, then with each word_blank creates a generated word for each one which is also attached to this instance of the story
  def generate_glibs(photo_libs, word_blanks, story)
    categorized_words = categorize_words(photo_libs)
    word_blanks.each do |word_blank|
      samples = categorize_words[word_blank.word_type]
      generated_word.create!(word: samples.sample, story: story, word_blank: word_blank)
    end
  end

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
