Pet.destroy_all
Pet.create(name: "Heizi", species: "dog", found_on: Date.yesterday)
Pet.create(name: "Blink", species: "cat", found_on: Date.yesterday)
Pet.create(name: "Hari", species: "dog", found_on: Date.today)
Pet.create(name: "Pepper", species: "dog", found_on: Date.today)
