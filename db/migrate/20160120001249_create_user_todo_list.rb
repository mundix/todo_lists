class CreateUserTodoList < ActiveRecord::Migration
  def change
    create_table :user_todo_lists do |t|
      t.references :user, index: true
      t.references :todo_list, index: true
    end
    add_foreign_key :user_todo_lists, :users
    add_foreign_key :user_todo_lists, :todo_lists
  end
end
