class ChangeColumnPhoneNumberTypeToString < ActiveRecord::Migration
  def change
    change_column :clients, :contact_person_number, :string
  end

end
