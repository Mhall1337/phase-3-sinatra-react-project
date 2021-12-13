class CreateTodosTable < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :thing_to_do
      t.integer :user_id
      t.timestamp :date_added
      t.timestamp :due_date
    end
  end
end
