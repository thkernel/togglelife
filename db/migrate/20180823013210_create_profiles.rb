class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name #, null: false
      t.string :last_name #, null: false
      t.string :gender, null: false
      t.date :birth_date, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.text :presentation #, null: false
      t.string :marital_status #, null: false
      t.string :height #, null: false
      t.string :weight #, null: false
      t.string :eyes #, null: false
      t.string :hair #, null: false
      t.string :sexual_orientation #, null: false
      t.string :occupation #, null: false
      t.string :astrology #, null: false
      t.string :region #, null: false
      t.string :nationality
      t.string :purpose #, null: false
      t.attachment  :avatar
      t.references :user, foreign_key: true, null: false, index: {unique: true}

      t.timestamps
    end
  end
end
