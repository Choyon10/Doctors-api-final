require 'rails_helper'

RSpec.describe Doctor, type: :model do

  # it { should validate_presence_of( :name ) }
  # it { should validate_presence_of( :degree ) }
  # it { should validate_presence_of( :fee ) }
  # it { should validate_presence_of( :visit_time ) }
  before :each do
    @diag = Doctor.new
  end

  it "is valid with valid arrtributes" do
    @diag.name = "something"
    @diag.degree = "something"
    @diag.fee = "something"
    @diag.visit_time = "something"
    expect(@diag).to be_valid
  end

  it "is invalid without a name" do
    @diag.name = nil
    expect(@diag).to_not be_valid
  end

  it "is invalid without a degree" do
    @diag.degree = nil
    expect(@diag).to_not be_valid
  end

  it "is invalid without a fee" do
    @diag.fee = nil
    expect(@diag).to_not be_valid
  end
  it "is invalid without a visit_time" do
    @diag.visit_time = nil
    expect(@diag).to_not be_valid
  end
end
