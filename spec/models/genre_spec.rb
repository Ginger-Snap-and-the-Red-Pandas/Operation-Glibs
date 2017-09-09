describe 'Genre' do
  let(:genre) { Genre.create(genre_name: "Sci-fi")}
  let(:script) {Script.create(name: "Hello")}

  it 'has an readable name' do
    expect(genre.genre_name).to eq("Sci-fi")
  end

  it 'has many scripts' do
    genre.scripts << script
    expect(genre.scripts.length).to eq(1)
  end

  it 'has many scenes' do
    3.times do
      genre.scenes.create(script_id: 2, dialogue: "Whatever",script_position: 2)
    end
    expect(genre.scenes.length).to eq(3)
  end

  it 'has many stories' do
    3.times do
      genre.stories << Story.new
    end
    expect(genre.stories.length).to eq(3)
  end

  it 'has many pictures' do
    genre.pictures.create(story_id: 1, scene_id: 3, url: "Cool")
    expect(genre.pictures.length).to eq(1)
  end
end