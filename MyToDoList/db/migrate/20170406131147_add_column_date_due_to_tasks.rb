class AddColumnDateDueToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :date_due, :datetime
  end
end
