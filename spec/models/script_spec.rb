describe 'Script' do
  let(:script) { Script.new(name: "Karl")}
  let(:genre) {Genre.new(genre_name:"western")}

  it 'has a genre' do
    script.genre = genre
    expect(script.genre.genre_name).to eq("western")
  end

  it 'has a name' do
    expect(script.name).to eq("Karl")
  end

  it 'has many stories' do
    script.stories.new(name: "Untitled", genre_id: 2)
    expect(script.stories.length).to eq(1)
  end

  it 'has many pictures' do
    script.pictures.new
    expect(script.pictures.length).to eq(1)
  end

  it 'has many scenes' do
    script.scenes.new
    expect(script.scenes.length).to eq(1)
  end

  it 'has many word_blanks' do
    script.word_blanks.new
    expect(script.word_blanks.length).to eq(1)
  end

end