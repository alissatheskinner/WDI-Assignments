class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.string :job_description
      t.string :origin
      t.string :desination
      t.string :containers_needed
      t.integer :cost

      t.timestamps
    end
  end
end
