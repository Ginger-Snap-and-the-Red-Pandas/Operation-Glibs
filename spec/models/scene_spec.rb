require 'rails_helper'
describe "Scene" do
  let(:script) {Script.create(name:"Downtown Chicago", genre_id: 3)}
  let(:scene) {Scene.create(script_id: 3, dialogue: "What's up dude?", script_position: 3)}

  it 'belongs to a script' do
    scene.script = script
    expect(scene.script).to eq(script)
  end

  it 'has dialogue' do
    expect(scene.dialogue).to eq("What's up dude?")
  end

  it 'has a script postion' do
    expect(scene.script_position).to eq(3)
  end
end