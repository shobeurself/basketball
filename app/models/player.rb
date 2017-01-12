class Player < ApplicationRecord
	belongs_to :team
	validates :name, presence: true, 
						length: {minimum: 5},
						uniqueness: true
end
