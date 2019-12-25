class ChangeDefaultValue < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :city_id
    change_table(:profiles) do |t|
      t.references :city, null: false, foreign_key: true , default: 1
    end
  end
end
