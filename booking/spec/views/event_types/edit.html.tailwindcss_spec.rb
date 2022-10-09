require 'rails_helper'

RSpec.describe "event_types/edit", type: :view do
  before(:each) do
    @event_type = assign(:event_type, EventType.create!(
      name: "MyString",
      location: "MyString",
      description: nil,
      duration: 1,
      price: 1,
      user: nil
    ))
  end

  it "renders the edit event_type form" do
    render

    assert_select "form[action=?][method=?]", event_type_path(@event_type), "post" do

      assert_select "input[name=?]", "event_type[name]"

      assert_select "input[name=?]", "event_type[location]"

      assert_select "input[name=?]", "event_type[description]"

      assert_select "input[name=?]", "event_type[duration]"

      assert_select "input[name=?]", "event_type[price]"

      assert_select "input[name=?]", "event_type[user_id]"
    end
  end
end
