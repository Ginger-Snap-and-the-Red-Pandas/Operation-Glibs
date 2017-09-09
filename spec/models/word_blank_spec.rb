describe 'WordBlank' do
  let(:wordblank) {WordBlank.new(scene_position: 2, word_type: "NN")}
  let(:scene) {Scene.new(script_id: 5, dialogue:"What Up?" , script_position: 2 )}

  it 'belongs to a scene' do
    wordblank.scene = scene
    expect(wordblank.scene).to eq(scene)
  end

  it 'has a position' do
    expect(wordblank.scene_position).to eq(2)
  end

  it 'has a word type' do
    expect(wordblank.word_type).to eq("NN")
  end

  it 'has many generated words' do
    expect(wordblank.generated_words).to eq([])
  end

end