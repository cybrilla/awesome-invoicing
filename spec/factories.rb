require 'factory_girl'


FactoryGirl.define do
  factory :client do
    name 'Sanjiv'
    address '#1988, 12th main, indiranagar, bangalore'
    contact_person_name 'Sanjiv'
    contact_person_number '6759839829'
    contact_person_email 'Sanjiv@gmail.com'
  end
  
  factory :status do
    name 'Status1'
    description 'some description text'
  end
  
  factory :product do
    name 'product1'
    price '40000.0'
    invoice
  end
  
  factory :invoice do
    date '2012-08-28'
    tax_percentage '12'
    client
    status
   # factory :invoice_with_products do
   #   ignore do
   #     products_count 3
   #   end
   #   after(:build) do |invoice, evaluator|
   #     FactoryGirl.create_list(:product, evaluator.products_count, invoice: invoice)
   #   end
   # end
  end
   
end