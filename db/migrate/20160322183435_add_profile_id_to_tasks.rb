class AddProfileIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :id_profile, :integer
  end
end
