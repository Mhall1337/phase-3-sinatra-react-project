class CompanyTable < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name
    end
  end
end
