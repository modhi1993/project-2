class RemoveHaulIdFromCity < ActiveRecord::Migration[6.0]
  def change

    remove_column :cities, :haul_id, :bigint
  end
end
