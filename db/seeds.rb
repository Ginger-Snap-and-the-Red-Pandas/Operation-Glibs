# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# TEAM GLIB NOTES:
# HOW TO WRITE A SCRIPT-SEED

# Step One: Write your sample script inside of the scripts.rb file...trust us, that will make this shit easier moving forward.
# .....fill this once we know


Story.destroy_all
Script.destroy_all
GeneratedWord.destroy_all
Picture.destroy_all
Genre.destroy_all
Scene.destroy_all
WordBlank.destroy_all

@alien_genre = Genre.create!(genre_name: "Alien")


project_root = Dir.pwd
Dir.glob(project_root + '/db/glibs_scripts/*') {|file| require file}



