class CreateAvailabilitySlots < ActiveRecord::Migration[7.0]
  def change
    create_table :availability_slots do |t|
      t.datetime :start_at
      t.integer :duration

      t.timestamps
    end
  end
end
