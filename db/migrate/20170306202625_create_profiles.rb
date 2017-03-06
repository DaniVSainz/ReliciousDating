class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :gender
      t.string :gender_pref
      t.string :age
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
