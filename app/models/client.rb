class Client < ActiveRecord::Base
  attr_accessible :address, :contact_person_email, :contact_person_name, :contact_person_number, :name, :number
end
