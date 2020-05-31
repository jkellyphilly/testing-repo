class Pokemon < ApplicationRecord
  belongs_to :trainer

  def self.generate_new_nickname
    Faker::Name.first_name
  end

  def self.generate_new_species
    Faker::Games::Pokemon.name
  end

  def self.randomly_create_new(trainer_id)
    new_pokemon = Pokemon.new(trainer_id: trainer_id)
    new_pokemon.nickname = Pokemon.generate_new_nickname
    new_pokemon.species = Pokemon.generate_new_species
    if new_pokemon.save
      new_pokemon
    else
      # raise an error
    end
  end
end
