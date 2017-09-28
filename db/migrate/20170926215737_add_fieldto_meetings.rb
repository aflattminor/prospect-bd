class AddFieldtoMeetings < ActiveRecord::Migration[5.1]
  def change
      add_column :meetings, :source, :string
  end
end
