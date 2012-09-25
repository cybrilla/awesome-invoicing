require 'spec_helper'

describe InvoicesController do
  #render_views
  describe "index" do
    it "renders the index template" do
      invoice = FactoryGirl.create(:invoice)
      get :index
      expect(assigns(:invoices)).to eq([invoice])
      response.should render_template :index
    end
  end
  
  describe "show" do
    it "renders the show template" do
      invoice = FactoryGirl.create(:invoice)
      get :show, id: invoice
      assigns(:invoice).should eq(invoice)
      response.should render_template :show
    end
  end
  
  #describe "new" do
  #  it "creates a new invoice" do
  #    invoice = Invoice.new
      #invoice = FactoryGirl.create(:invoice)
  #    get :new
  #    expect(assigns(:invoice)).to =~ invoice
  #    response.should render_template :new
  #  end
  #end
  
  describe "edit" do
    it "edit existing invoice" do
      invoice = FactoryGirl.create(:invoice)
      get :edit, id: invoice
      assigns(:invoice).should eq(invoice)
      response.should render_template :edit
    end
  end
  
  #describe "get index" do
  #  it "populates an array of invoices"
  #  it "renders the :index view"
  #end
  
  describe InvoicesController do
    describe "GET index" do
      it "assigns all invoices to @invoices" do
        invoice = FactoryGirl.create(:invoice)
        get :index
        expect(assigns(:invoices)).to eq([invoice])
      end
    end
  end
  
  describe "put update" do
    before :each do
      @invoice = FactoryGirl.create(:invoice)
    end
    context "valid attributes" do
      it "located the requested @invoice" do
        put :update, id: @invoice, contact: FactoryGirl.attributes_for(:invoice)
        assigns(:invoice).should eq(@invoice)
      end
      it "changes @invoice attributes" do
        put :update, id: @invoice, 
          invoice: FactoryGirl.attributes_for(:invoice, date: "2012-08-17", tax_percentage: "14")
        @invoice.reload
        @invoice.date.should eq("2012-08-17".to_date)
        @invoice.tax_percentage.should eq(14)
      end
      #it "re-renders the edit method" do
      #  put :update, id: @invoice, contact: FactoryGirl.attributes_for(:invoice)
      #  response.should render_template :edit
      #end
    end
  end
  
end