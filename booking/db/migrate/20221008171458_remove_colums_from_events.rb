class RemoveColumsFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :start_at
    remove_column :events, :duration_minutes
  end
end
