require 'rails_helper'

RSpec.describe "doctors/new", type: :view do
  before(:each) do
    assign(:doctor, Doctor.new(
      :name => "MyString"
    ))
  end

  it "renders new doctor form" do
    render

    assert_select "form[action=?][method=?]", doctors_path, "post" do

      assert_select "input#doctor_name[name=?]", "doctor[name]"
    end
  end
end
