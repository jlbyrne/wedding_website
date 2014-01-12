class CreateFamilies < ActiveRecord::Migration
  def up
  	create_table :families do |t|
  		t.string :name

  		t.timestamps
  	end
  end

  def down
  	drop_table :families
  end
end
