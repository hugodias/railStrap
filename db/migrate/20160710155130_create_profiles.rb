class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :avatar
      t.text :description

      t.timestamps
    end
  end
end
