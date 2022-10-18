require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def perform
	player1 = Player.new("Josianne")
	player2 = Player.new("José")

	puts "------------------"
	puts "Voici l'état de chaque joueur:"
	puts player1.show_state
	puts player2.show_state
	puts " "

	puts "Passons à la phase d'attaque:"

	while player1.life_points > 0 && player2.life_points > 0

	puts player2.attacks(player1)
		if player1.life_points > 0
	puts player1.attacks(player2)
		else break
		end

	end
end

#perform


binding.pry