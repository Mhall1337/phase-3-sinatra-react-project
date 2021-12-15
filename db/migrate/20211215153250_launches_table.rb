class LaunchesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :launches do |t|
      t.string :name
      t.string :details
      t.boolean :success
      t.string :failure_notes
      t.integer :flight_number
      t.integer :company_id
      t.timestamp :date_of_launch
    end
  end
end
