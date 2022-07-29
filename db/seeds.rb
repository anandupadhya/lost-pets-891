Pet.destroy_all

10.times do
  p Pet.create(name: Faker::Creature::Dog.name, species: "dog", found_on: Date.today)
end
