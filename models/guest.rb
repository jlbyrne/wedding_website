class Guest < ActiveRecord::Base

	validates_presence_of :first_name, :last_name, :city, :family_id
	validates_uniqueness_of :email, :family_id
	
	before_save :handle_case

	private

	def handle_case
		self.first_name = self.first_name.downcase
		self.last_name = self.last_name.downcase
	end
end