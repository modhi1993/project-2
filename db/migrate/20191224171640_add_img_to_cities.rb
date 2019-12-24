class AddImgToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :img, :string
  end
end
