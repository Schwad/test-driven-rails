class AddEmailToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :email, :text
  end
end
