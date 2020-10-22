# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

City.create!(name: "San Francisco")
City.create!(name: "Paris")
City.create!(name: "Los Angeles")
City.create!(name: "New York")


20.times do
 
 dog = Dog.create!(name: Faker::Creature::Dog.name, city: City.find(rand(1..4)))
end

20.times do

 dogsitter = Dogsitter.create!(name: Faker::Name.first_name, city: City.find(rand(1..4)))

end

#pour que le dog et le dogsitter soit dans la même ville

20.times do |i|
    20.times do |e|
        if Dog.find(i + 1).city == Dogsitter.find(e + 1).city
            Stroll.create!(dog: Dog.find(i + 1), dogsitter: Dogsitter.find(e + 1))
        end
    end
end