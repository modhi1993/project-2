class RemoveCityFromHaul < ActiveRecord::Migration[6.0]
  def change

    remove_column :hauls, :city_name, :string
  end
end
