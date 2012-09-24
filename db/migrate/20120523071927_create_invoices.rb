class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date
      t.decimal :tax_percentage

      t.timestamps
    end
  end
end
