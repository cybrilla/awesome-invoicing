class ChangeTaxpercentageDataType < ActiveRecord::Migration
  def change
    change_table :invoices do |t|
      t.remove :tax_percentage
      t.float :tax_percentage
    end
  end
end
