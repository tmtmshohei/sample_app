class AddDivisionToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :division, :strings
  end
end
