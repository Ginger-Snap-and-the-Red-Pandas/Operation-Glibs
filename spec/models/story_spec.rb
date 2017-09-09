describe 'Story' do
  let(:story) { Story.new}
  let(:genre) { Genre.create(genre_name: "Sci-fi")}

  it 'has a genre' do
    story.genre = genre
    expect(story.genre.genre_name).to eq("Sci-fi")
  end

  it 'has a script' do
    story.script = Script.new(name: "The Matrix")
    expect(story.script.name).to eq("The Matrix")
  end

  it 'has pictures' do
    3.times do
      story.pictures << Picture.new
    end
    expect(story.pictures.length).to eq(3)
  end

  it 'has many scenes' do
    3.times do
      story.scenes << Scene.new
    end
    expect(story.scenes.length).to eq(3)
  end

  it 'has many generated words' do
    3.times do
      story.generated_words << GeneratedWord.new
    end
    expect(story.generated_words.length).to eq(3)
  end

  it 'has many word_blanks' do
    3.times do
      story.word_blanks << WordBlank.new
    end
    expect(story.word_blanks.length).to eq(3)
  end

end