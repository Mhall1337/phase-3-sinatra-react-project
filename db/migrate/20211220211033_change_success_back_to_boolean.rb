class ChangeSuccessBackToBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :launches, :success, :boolean
  end
end
