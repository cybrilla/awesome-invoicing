class Invoice < ActiveRecord::Base
  validates_presence_of :tax_percentage, :date

  belongs_to :status
  belongs_to :client
  has_many :products
  
  accepts_nested_attributes_for :products ,:allow_destroy => true
  
  attr_accessible :date, :tax_percentage, :status_id, :client_id, :products_attributes
  
  def total_value
    value = 0
    
    self.products.each do |p|
    value = p.price + value
    end
    return value
    
  end
  
  def total_tax
    self.total_value * (self.tax_percentage/100)
  end
  
  def total_value_with_tax
    self.total_value + self.total_tax
  end
end
