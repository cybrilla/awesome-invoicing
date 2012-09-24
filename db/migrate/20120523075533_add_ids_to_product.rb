class AddIdsToProduct < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.references :invoice
    end
  end
end
