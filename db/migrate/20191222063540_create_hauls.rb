class CreateHauls < ActiveRecord::Migration[6.0]
  def change
    create_table :hauls do |t|
      t.string :subject
      t.string :store_name , null: false
      t.string :city_name , null: false
      t.string :product_image , null: false
      t.text :discreption , null: false
      t.references :user, null: false, foreign_key: true
    
      t.timestamps
    end
  end
end
