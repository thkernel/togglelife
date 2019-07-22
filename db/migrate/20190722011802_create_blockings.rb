class CreateBlockings < ActiveRecord::Migration[5.2]
  def change
    create_table :blockings do |t|
      t.string :reason
      t.references :sender, index: true, :null => false
    	t.references :recipient, index: true, :null => false
      t.string :status, default: "pending"
      t.string :identifier

      t.timestamps
    end
  end
end
