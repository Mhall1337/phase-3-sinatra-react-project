class UpdateDateOfLaunchDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :launches, :date_of_launch, :timestamp
  end
end
