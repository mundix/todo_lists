class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :title
      t.text :description
      t.boolean :completed, default: false
      t.references :todo_list, index: true

      t.timestamps null: false
    end
    add_foreign_key :todo_items, :todo_lists
  end
end
