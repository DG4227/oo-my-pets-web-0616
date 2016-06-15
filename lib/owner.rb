require 'pry'

class Owner

	attr_accessor :name, :pets
	attr_reader :species

	@@count = 0
	@@all = []

	def self.reset_all
		@@all = []
		@@count = 0
	end

	def self.count
		@@count
	end

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@species =  "human"
		@pets = {fishes: [], dogs: [], cats: []}



		@@count += 1
		@@all << self
	end

	def say_species
		"I am a #{species}."
	end

	def buy_fish(name)
		pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)	
		pets[:dogs] << Dog.new(name)
	end

	def walk_dogs
		pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def play_with_cats
		pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def walk_dogs
		pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def feed_fish
		pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		pets.keys.each do |species|
			pets[species].each do |animal|
				animal.mood = "nervous"
			end
		end

		bye_bye
	end

	def bye_bye
		@pets = {fishes: [], dogs: [], cats: []}
	end

	def list_pets
		return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
	end

end






















