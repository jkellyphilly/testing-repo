class PokemonsController < ApplicationController

  def create
    trainer = Trainer.find(params[:trainer_id])
    if trainer.pokemons.size < 6
      new_pokemon = Pokemon.randomly_create_new(params[:trainer_id])
      render json: new_pokemon
    end
  end

  def destroy
    pokemon = Pokemon.find(params[:id])
    pokemon.destroy
  end

end
