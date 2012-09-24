class ChangePriceDataType < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.remove :price
      t.float :price
    end
  end
end
