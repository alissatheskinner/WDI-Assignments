class AddJobNameToJobs < ActiveRecord::Migration[5.0]
  def change
  	add_column :jobs, :job_name
  end
end
