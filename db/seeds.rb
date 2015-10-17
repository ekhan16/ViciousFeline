# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

v2c1s1 = File.open("public/storyline/page1.html", 'rb') {|io| io.read }


base_uri = "https://viciousunicorn.firebaseio.com/Sagas"
firebase = Firebase::Client.new(base_uri)

firebase.push(base_uri, {"Volume 1" => {"Contents" => {"Chapter 1"=>{"Scene 1"=>"eKhan was impressed by my coolness", "Scene 2"=>"asdfasdfasdf"}}}})

firebase.push(base_uri, {"Volume 2" => {"Contents" => {"Chapter 1"=>{"Scene 1"=>v2c1s1, "Scene 2"=>"Get Fucked", "Scene 3"=>"When you think you've got it, but turns out you really don't"}}}})

