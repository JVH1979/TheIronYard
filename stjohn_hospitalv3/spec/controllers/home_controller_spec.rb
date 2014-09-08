require 'rails_helper'

describe HomeController do 
  
  it "GET #index" do
    sign_in
    get :index
    expect(assigns(:patients).class).to eq(Patient: :ActiveRecord_Relation)
  end
end