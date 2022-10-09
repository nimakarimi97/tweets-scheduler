class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_at
      t.integer :duration_minutes

      t.timestamps
    end
  end
end
