class Voivodeship < ActiveRecord::Base
	has_many :constituencies
	
	
	validates :name, presence: true
end
