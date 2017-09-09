describe 'GeneratedWord' do
  let(:generatedword) { GeneratedWord.create(word: "Karl")}
  let(:wordblank) {WordBlank.new(scene_position: 2, word_type: "NN")}
  let(:story) {Story.new(name: "Welcome to Earth by Will Smith", genre_id:3, script_id: 2)}

  it 'has a word' do
    expect(generatedword.word).to eq("Karl")
  end

  it 'has a story' do
    generatedword.story = story
    expect(generatedword.story).to eq(story)
  end

  it 'has a word_blank position ' do
    generatedword.word_blank = wordblank
    expect(generatedword.word_blank).to eq(wordblank)

  end

end