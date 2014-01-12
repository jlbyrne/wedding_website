class CreateGuests < ActiveRecord::Migration
  def up
  	create_table :guests do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :email
  		t.string :city
  		t.string :state
  		t.boolean :responded, default: false
  		t.boolean :attending
  		t.string :dinner_choice
  		t.belongs_to :family

  		t.timestamps
  	end
  end

  def down
  	drop_table :guests
  end
end