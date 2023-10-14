class CreateBabyNameOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :baby_name_options do |t|
      t.string :name
      t.references :baby_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
