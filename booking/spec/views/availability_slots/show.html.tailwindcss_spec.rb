require 'rails_helper'

RSpec.describe "availability_slots/show", type: :view do
  before(:each) do
    @availability_slot = assign(:availability_slot, AvailabilitySlot.create!(
      duration: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
