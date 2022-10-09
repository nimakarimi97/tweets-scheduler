class AddSlotIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :availability_slots, :events, index: true, foreign_key: true
  end
end
