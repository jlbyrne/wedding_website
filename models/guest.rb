class Guest < ActiveRecord::Base
	belongs_to :family

	validates_presence_of :first_name, :last_name, :city, :family_id
	validates_uniqueness_of :email

	validates_format_of :email, :with => /.+@.+\..+/i
end