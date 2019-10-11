class CreateUserTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :task
      t.string :references
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
