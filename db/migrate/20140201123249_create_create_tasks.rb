class CreateCreateTasks < ActiveRecord::Migration
  def change
    create_table :create_tasks do |t|

      t.timestamps
    end
  end
end
