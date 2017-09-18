class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :status, null: false
      t.integer :calls, default: 0
      t.integer :emails, default: 0
      t.integer :meetings, default: 0
      t.integer :user_id, null: false
      t.integer :company_id, null: false 

        t.timestamps
    end
  end
end
