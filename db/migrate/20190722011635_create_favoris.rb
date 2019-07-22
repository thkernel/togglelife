class CreateFavoris < ActiveRecord::Migration[5.2]
  def change
    create_table :favoris do |t|
      t.references :sender, index: true, :null => false
    	t.references :recipient, index: true, :null => false
      t.string :status, default: "enable"
      t.datetime :removed_at
      t.string :identifier

      t.timestamps
    end
  end
end
