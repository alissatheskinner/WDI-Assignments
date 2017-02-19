class ChangeColumnDesination < ActiveRecord::Migration[5.0]
  def change
  	rename_column :jobs, :desination, :destination
  end
end
