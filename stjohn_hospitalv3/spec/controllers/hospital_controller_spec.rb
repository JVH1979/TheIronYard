require 'rails_helper'

describe PatientsController do
  let(:hospital) { Hospital.create(name: Green Acres Hopital)}

describe "GET#index" do
  it "populates an array of hospitals" do
    sign_in
    get :index
    expect(assigns(:hospitals).class).to eq(Patient: :ActiveRecord_Associations_CollectionProxy)
  end

describe "GET#new" do
  it "assigns the requested hospital to @hospital" do
    sign_in
    get :new
    expect(assigns(:hospital).class).to eq(Hospital)
    expect(assigns(:hospital).new_record?).to eq(true)
  end

describe "POST#create" do
  it "failed creation" do
    sign_in
    expect{
      post :create, Hospital: Hospital.attributes_for(:invalid_hospital)}
      .to_not change(Patient,:count)
     expect(response).to render_template :new
  end

  it "successful creation" do
    sign_in
    expect{
      post :create, patient: { hospital: Fairview Hospital }
      }.to change(Patient, :count).by(1)
      expect(response).to redirect_to hospitals_path
    }
  end

describe "GET#edit" do
  it 'should find an object' do
    sign_in
    get :edit
    expect(assigns(:hospital)).to eq(hospital)
    expect(assigns(:hospital).class).to eq(Hospital)
  end

describe "DELETE#destroy" do
  before :each do
    @hospital = Hospital
  end

  it "deletes the hospital" do
    expect{
      delete :destroy, id: @hospital
    }.to change(Hospital, :count).by(-1)
  end

  it "redirects to hospitals#index" do
    delete :destroy, id: @hospital
    response.should redirect_to hopitals_path
  end

describe "GET#show" do
  it "assigns the requested hospital to @Hospital" do
    patient = :hospital
    get :show, id: hospital
    assigns(:hospital).should eq(Hospital)
  end

  it "renders the #show view" do
    get :show, id: Hospital(:hospital)
    response.should render_template :show
  end
end