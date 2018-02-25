class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def new
		# @pokemons = Pokemon.all

	end

	def create
		new_pokemon = Pokemon.new
		new_pokemon.species = params[:species]
		new_pokemon.nickname = params[:nickname]
		new_pokemon.level = params[:level]

		if new_pokemon.save
			redirect_to '/'
		end
	end

end
