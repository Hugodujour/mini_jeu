class Player
	attr_accessor :name, :life_points

	def initialize(name)
		@name = name
		@life_points = 10
	end

	def show_state
		return "#{name} a #{life_points} points de vie."
	end

	def gets_damage(damaged)
		@life_points -= damaged.to_i
		if life_points <= 0
			return "#{name} a été tué !"
		end
	end

	def attacks(user)
		puts "#{name} attaque le joueur #{user.name} !"

		def compute_damage
		return rand(1..6)
		end

		damaged = compute_damage
		puts "#{name} inflige #{damaged} dégats au joueur #{user.name} !"
		user.gets_damage(damaged)

	end

end

class HumanPlayer
	attr_accessor :name, :life_points, :weapon_lvl

	def initialize(name)
		@name = name
		@life_points = 100
		@weapon_lvl = 1
	end

	def show_state
		return "#{name} a #{life_points} PV et une arme lvl #{weapon_lvl}."
	end

	def gets_damage(damaged)
		@life_points -= damaged.to_i
		if life_points <= 0
			return "#{name} a été tué !"
		end
	end

	def attacks(user)
		puts "#{name} attaque le joueur #{user.name} !"

		def compute_damage
		return rand(1..6) * weapon_lvl
		end

		damaged = compute_damage
		puts "#{name} inflige #{damaged} dégats au joueur #{user.name} !"
		user.gets_damage(damaged)

	end

	def search_weapon
		new_weapon = rand(1..6)
		puts " Tu as trouvé une arme de niveau #{new_weapon} !"
			if new_weapon > weapon_lvl
				puts "Génial, on la prend !"
				self.weapon_lvl = new_weapon.to_i

			else
				puts "Elle est pas top, on la prend pas..."
			end
		puts "#{self.show_state}"
	end

	def search_health_pack
		health_pack = rand(1..6)
		if health_pack == 1
			puts "Tu n'as rien trouvé..."

		elsif health_pack > 1 && health_pack < 6
			puts "Tu as trouvé un pack +50hp."
			if life_points <= 50
				self.life_points += 50
			else self.life_points = 100
			end

		elsif health_pack == 6
			puts "Wow ! Tu as trouvé un pack +80hp !"
			if life_points <= 20
				self.life_points += 80
			else self.life_points = 100
			end
		end
	end

end
