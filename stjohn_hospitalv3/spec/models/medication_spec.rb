require 'rails_helper'

RSpec.describe Medication, :type => :model do

  subject do
    Medication.new({
        name: "Tylenol"
      })
  end

  describe Medication do 
    it { should belong_to(:patient) }
  end

  it "should return the name of a medication object" do
    expect(subject.name). to include("Tylenol")
  end

  it "should not return an empty value" do
    expect(subject.name). to include("")
  end
end