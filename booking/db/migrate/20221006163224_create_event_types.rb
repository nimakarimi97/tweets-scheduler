class CreateEventTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :event_types do |t|
      t.string :name
      t.string :location
      t.integer :duration
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
