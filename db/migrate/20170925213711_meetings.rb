class Meetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.integer :lead_id, null: false
      t.string :result, null: false
      t.text :details, null: false
      t.text :next_steps, null: false

      t.timestamps
    end
  end
end
