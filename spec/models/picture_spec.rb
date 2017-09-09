describe 'Picture' do
  let(:picture) {Picture.new(url: "www.picture.com")}
  let(:story) {Story.new(name: "Welcome to Earth by Will Smith", genre_id:3, script_id: 2)}
  let(:scene) {Scene.new(script_id: 5, dialogue:"What Up?" , script_position: 2 )}

  it 'belongs to a story' do
    picture.story = story
    expect(picture.story).to eq(story)
  end

  it 'belongs to a scene' do
    picture.scene = scene
    expect(picture.scene).to eq(scene)
  end

  it 'has a url' do
    expect(picture.url).to eq("www.picture.com")
  end
end