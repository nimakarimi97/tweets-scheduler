require 'rails_helper'

RSpec.describe "availability_slots/edit", type: :view do
  before(:each) do
    @availability_slot = assign(:availability_slot, AvailabilitySlot.create!(
      duration: 1
    ))
  end

  it "renders the edit availability_slot form" do
    render

    assert_select "form[action=?][method=?]", availability_slot_path(@availability_slot), "post" do

      assert_select "input[name=?]", "availability_slot[duration]"
    end
  end
end
