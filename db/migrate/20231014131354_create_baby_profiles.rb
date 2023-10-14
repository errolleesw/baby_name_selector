class CreateBabyProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :baby_profiles do |t|
      t.string :gender
      t.string :mothers_name
      t.string :fathers_name
      t.date :expected_date
      t.text :description

      t.timestamps
    end
  end
end
