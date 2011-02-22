class CreateInstruments < ActiveRecord::Migration
  def self.up
    create_table :instruments do |t|
      t.string :name

      t.timestamps
    end
    
    add_index :instruments, :name, :unique => true
  end

  def self.down
    drop_table :instruments
  end
end
