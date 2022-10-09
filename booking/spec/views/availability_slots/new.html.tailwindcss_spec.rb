require 'rails_helper'

RSpec.describe "availability_slots/new", type: :view do
  before(:each) do
    assign(:availability_slot, AvailabilitySlot.new(
      duration: 1
    ))
  end

  it "renders new availability_slot form" do
    render

    assert_select "form[action=?][method=?]", availability_slots_path, "post" do

      assert_select "input[name=?]", "availability_slot[duration]"
    end
  end
end
