class Cliente < ApplicationRecord

	# creamos las relaciones entre tablas
	belongs_to :user
end
