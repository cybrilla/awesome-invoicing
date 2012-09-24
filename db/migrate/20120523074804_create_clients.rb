class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :contact_person_name
      t.integer :contact_person_number
      t.string :contact_person_email

      t.timestamps
    end
  end
end
