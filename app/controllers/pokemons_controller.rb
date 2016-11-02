class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end
  def capture
    @pokemon = Pokemon.where(id: params[:id]).first
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.where(id: params[:id]).first
    @trainer = @pokemon.trainer_id
    @pokemon.hp -= 10
      if @pokemon.hp <= 0
        @pokemon.destroy
      else
        @pokemon.save
      end
    redirect_to File.join(trainers_path, @trainer.to_s)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new
    @pokemon.name = params[:pokemon][:name]
    @pokemon.hp = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to File.join(trainers_path, current_trainer.id.to_s)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to pokemons_new_path
    end
  end
end
