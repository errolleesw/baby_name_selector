class CreateNameRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :name_ratings do |t|
      t.references :baby_name_option, null: false, foreign_key: true
      t.string :factor
      t.string :rating

      t.timestamps
    end
  end
end
