class Product < ActiveRecord::Base
  validates_presence_of :name, :price
  belongs_to :invoice
  
  attr_accessible :description, :name, :price, :invoice_id
end
