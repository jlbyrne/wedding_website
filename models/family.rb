class Family < ActiveRecord::Base
	has_many :guests

	validates :name, presence: true

end