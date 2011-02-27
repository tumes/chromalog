class CreateMaintenanceEvents < ActiveRecord::Migration
  def self.up
    create_table :maintenance_events do |t|
      t.integer :instrument_id
      t.date :date
      t.text :problem
      t.text :maintenance_performed
      t.integer :user_id
      t.text :result

      t.timestamps
    end
  end

  def self.down
    drop_table :maintenance_events
  end
end
