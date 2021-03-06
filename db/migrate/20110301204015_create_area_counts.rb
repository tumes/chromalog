class CreateAreaCounts < ActiveRecord::Migration
  def self.up
    create_table :area_counts do |t|
      t.integer :calibration_level_id
      t.decimal :area, :precision => 12, :scale => 4
      t.string :analyte

      t.timestamps
    end
  end

  def self.down
    drop_table :area_counts
  end
end
