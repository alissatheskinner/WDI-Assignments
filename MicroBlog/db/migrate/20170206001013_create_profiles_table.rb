class CreateProfilesTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :profile do |t|
		t.integer :user_id
  end
end
