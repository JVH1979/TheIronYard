require 'rails_helper'

describe PatientsController do
  let(:patient) { Patient.create(first_name: "Jim", last_name: "Jackson", dob: 1965-10-6, ailment: "cancer", gender: "male")}

describe "GET#index" do
  it "populates an array of patients" do
    sign_in
    get :index
    expect(assigns(:patients).class).to eq(Patient: :ActiveRecord_Associations_CollectionProxy)
  end

describe "GET#new" do
  it "assigns the requested patient to @patient" do
    sign_in
    get :new, hospital_id: hospital
    expect(assigns(:patient).class).to eq(Patient)
    expect(assigns(:patient).new_record?).to eq(true)
  end

describe "POST#create" do
  it "failed creation" do
    sign_in
    click_link "conway hospital"
    click_link "Create Patient Data"
    expect{
      post :create, patient: Patient.attributes_for(:invalid_patient)}
      .to_not change(Patient,:count)
     expect(response).to render_template :new
  end

  it "successful creation" do
    sign_in
    click_link "conway hospital"
    click_link "Create Patient Data"
    expect{
      post :create, patient: { first_name: "Ann", last_name: "Hammond", dob: "1950-7-16", ailment: "arthritis", gender: "female" }
      }.to change(Patient, :count).by(1)
      expect(response).to redirect_to hospitals_path
    }
  end

describe "GET#edit" do
  it 'should find an object' do
    sign_in
    get :edit, hospital_id: hospital, id: patient
    expect(assigns(:patient)).to eq(patient)
    expect(assigns(:patient).class).to eq(Patient)
  end

describe "DELETE#destroy" do
  before :each do
    @patient = Hospital(:patient)
  end

  it "deletes the patient" do
    expect{
      delete :destroy, id: @patient
    }.to change(Patient, :count).by(-1)
  end

  it "redirects to patients#index" do
    delete :destroy, id: @patient
    response.should redirect_to hopital_patients_path
  end

describe "GET#show" do
  it "assigns the requested patient to @Patient" do
    patient = Hospital(:patient)
    get :show, id: patient
    assigns(:patient).should eq(patient)
  end

  it "renders the #show view" do
    get :show, id: Hospital(:patient)
    response.should render_template :show
  end
end