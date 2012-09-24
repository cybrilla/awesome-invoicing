class AddIdsToInvoice < ActiveRecord::Migration
  def change
    change_table :invoices do |t|
    t.references :client
    t.references :status
    end
  end
end
