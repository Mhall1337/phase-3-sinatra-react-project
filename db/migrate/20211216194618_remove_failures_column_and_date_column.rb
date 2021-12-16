class RemoveFailuresColumnAndDateColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :launches, :failure_notes
    remove_column :launches, :date_of_launch
  end
end
