class AddReferencesToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :event_type_id, :integer
  end
end
