require 'rails_helper'

RSpec.describe "Patient", :type => :request do

  subject do
    Patient.new({
      first_name: "Jim",
      last_name: "Gaffagan",
      dob: 1957-8-19,
      gender: "male",
      })
  end

  it "should return the first name of a patient object" do
    expect(subject.first_name). to include("Jim")
  end

  it "should return the last name of a patient object" do
    expect(subject.last_name). to include("Gaffagan")
  end

  it "should return the gender of a patient object" do
    expect(subject.gender). to include("male")
  end

  

  describe Patient do 
    it { should belong_to(:hospital) }
  end





end