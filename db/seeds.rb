# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

accent = Accent.new({"name" => "Charlie Brown adult", "price" => 1000, "image" => "http://www.benstich.com/wp-content/uploads/2014/04/charliebrown.jpg", "description" => "You will wah wah wah with the best of them."})
accent.save

accent = Accent.new({"name" => "Yosemite Sam", "price" => 10000, "image" => "http://vignette2.wikia.nocookie.net/looneytunes/images/d/d8/Yosemite_Sam.jpg/revision/latest?cb=20130824013230", "description" => "We will teach you to wag your tounge on every S just like Sam."})
accent.save

accent = Accent.new({"name" => "Latka Gravas", "price" => 100000, "image" => "http://www.trbimg.com/img-5284f864/turbine/-andy-kaufman-is-alive-brother-says-20131114-001/600/441x600", "description" => "We will guide you when to Ibbi da and when to Ibbi dont"})
accent.save

accent = Accent.new({"name" => "Swedish Chef", "price" => 1000000, "image" => "http://cf2.foodista.com/sites/default/files/styles/featured/public/field/image/swedish chef.jpg", "description" => "You will hurna burna, and beryk beryk like no other. If need be we will put a pan on your head - chirr-kens not provided"})
accent.save