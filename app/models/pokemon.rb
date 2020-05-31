class Pokemon < ApplicationRecord
  belongs_to :trainer

  def generate_new_nickname
    Faker::Name.first_name
  end

  def generate_new_species
    Faker::Games::Pokemon.name
  end
end
