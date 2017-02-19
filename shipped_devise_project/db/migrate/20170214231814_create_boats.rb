class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :name_of_boat
      t.integer :container_capacity
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
