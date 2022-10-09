require 'rails_helper'

RSpec.describe "event_types/index", type: :view do
  before(:each) do
    assign(:event_types, [
      EventType.create!(
        name: "Name",
        location: "Location",
        description: nil,
        duration: 2,
        price: 3,
        user: nil
      ),
      EventType.create!(
        name: "Name",
        location: "Location",
        description: nil,
        duration: 2,
        price: 3,
        user: nil
      )
    ])
  end

  it "renders a list of event_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
