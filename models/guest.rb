class Guest < ActiveRecord::Base

	validates_presence_of :first_name, :last_name, :city, :family_id
	validates_uniqueness_of :email
	
end