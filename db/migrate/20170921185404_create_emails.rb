class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.integer :lead_id, null: false
      t.string :subject, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
