class CreateCalibrationLevels < ActiveRecord::Migration
  def self.up
    create_table :calibration_levels do |t|
      t.integer :run_log_id
      t.integer :standard_conc

      t.timestamps
    end
  end

  def self.down
    drop_table :calibration_levels
  end
end
