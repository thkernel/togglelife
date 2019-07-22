class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :name, unique: true
      t.text :description
      t.string :status
      t.string :identifier

      t.timestamps
    end
  end
end
