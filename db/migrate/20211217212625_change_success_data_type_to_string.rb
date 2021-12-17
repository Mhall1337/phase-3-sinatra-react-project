class ChangeSuccessDataTypeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :launches, :success, :string
  end
end
