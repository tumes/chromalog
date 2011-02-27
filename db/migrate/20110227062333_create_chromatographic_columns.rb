class CreateChromatographicColumns < ActiveRecord::Migration
  def self.up
    create_table :chromatographic_columns do |t|
      t.string :name
      t.integer :instrument_id
      t.string :brand
      t.text :description
      t.string :serial
      t.date :received
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :chromatographic_columns
  end
end
