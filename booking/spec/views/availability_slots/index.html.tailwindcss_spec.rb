require 'rails_helper'

RSpec.describe "availability_slots/index", type: :view do
  before(:each) do
    assign(:availability_slots, [
      AvailabilitySlot.create!(
        duration: 2
      ),
      AvailabilitySlot.create!(
        duration: 2
      )
    ])
  end

  it "renders a list of availability_slots" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
