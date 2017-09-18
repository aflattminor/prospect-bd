class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :industry, null: false
      t.string :core_business, null: false
      t.integer :employee_count, null: false
      t.string :headquarters, null: false
      t.boolean :public, null: false
      t.string :status, null: false


      t.timestamps
    end
  end
end
