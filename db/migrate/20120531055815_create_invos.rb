class CreateInvos < ActiveRecord::Migration
  def change
    create_table :invos do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
