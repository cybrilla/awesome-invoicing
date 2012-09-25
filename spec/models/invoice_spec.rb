require 'spec_helper.rb'


describe Invoice do
  it "should be zero without any products" do
    invoice = FactoryGirl.build(:invoice )
    expected_value = 0
    invoice.total_value.should eq(expected_value)
  end
  
  it "has to generate sum of all products total price" do
    invoice = FactoryGirl.create(:invoice)
    FactoryGirl.create_list(:product, 2, invoice: invoice, name: 'product5', price: '20000')
    expected_value = 40000
    invoice.total_value.should eq(expected_value)
  end
  
  it "should generate total tax" do
    invoice = FactoryGirl.create(:invoice)
    FactoryGirl.create_list(:product, 2, invoice: invoice, name: 'product5', price: '20000')
    expected_value = (40000 * 0.12)
    invoice.total_tax.should eq(expected_value)
  end
  
  it "should generate total value with tax" do
    invoice = FactoryGirl.create(:invoice)
    FactoryGirl.create_list(:product, 2, invoice: invoice, name: 'product5', price: '20000')
    expected_value = 40000 + (40000 * 0.12)
    invoice.total_value_with_tax.should eq(expected_value)
  end
  
end
