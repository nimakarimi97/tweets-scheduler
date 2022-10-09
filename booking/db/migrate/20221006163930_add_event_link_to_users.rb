class AddEventLinkToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :event_link, :string
    add_index :users, :event_link, unique: true
  end
end
