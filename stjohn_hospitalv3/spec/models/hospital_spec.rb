require 'rails_helper'

RSpec.describe Hospital, :type => :model do

  subject do
    Hospital.new({
        name: "Roper St. Francis"
      })
  end

  it "should return the name of a hospital object" do
    expect(subject.name). to include("Roper St. Francis")
  end


  it "should not return an empty value" do
    expect(subject.name). to include("")
  end

  describe Hospital do 
    it { should have_many(:patients) }
  end
end