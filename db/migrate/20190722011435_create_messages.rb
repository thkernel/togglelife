class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
    	t.text :body, :null => false
      t.boolean :read, :default => false
      t.references :conversation, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.datetime :send_at
      t.datetime :read_at
      t.string :identifier
    	t.timestamps 
    end
  end
end
