class Invoice < ActiveRecord::Base
  validates_presence_of :tax_percentage

  belongs_to :status
  belongs_to :client
  has_many :products
  
  attr_accessible :date, :tax_percentage, :status_id, :client_id
  
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
