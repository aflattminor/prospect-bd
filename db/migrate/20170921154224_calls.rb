class Calls < ActiveRecord::Migration[5.1]
  def change
    create_table :calls do |t|
      t.integer :user_id, null: false
      t.integer :lead_id, null: false
      t.string :result, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
