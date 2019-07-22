class CreateFlirts < ActiveRecord::Migration[5.2]
  def change
    create_table :flirts do |t|
      t.references :sender, index: true, :null => false
    	t.references :recipient, index: true, :null => false
      t.string :status, default: "pending"
      t.datetime :accepted_at
      t.datetime :removed_at
      t.string :identifier

      t.timestamps
    end
  end
end
