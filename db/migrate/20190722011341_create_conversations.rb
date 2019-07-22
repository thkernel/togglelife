class CreateConversations < ActiveRecord::Migration[5.2]
  def change
   create_table :conversations do |t|
     t.references :sender, index: true, :null => false
     t.references :recipient, index: true, :null => false
     t.string :identifier
     t.timestamps 
   end
 end
end
