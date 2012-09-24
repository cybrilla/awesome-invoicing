class Product < ActiveRecord::Base
  validates_presence_of :name, :price
  has_many :invoices
  
  attr_accessible :description, :name, :price, :invoice_id
end
