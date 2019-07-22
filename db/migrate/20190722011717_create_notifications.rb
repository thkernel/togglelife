class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :content
      t.references :sender, index: true, :null => false
      t.references :recipient, index: true, :null => false
      t.boolean :read, default: false 
      t.datetime :read_at
      t.string :status
      t.string :identifier

      t.timestamps
    end
  end
end
