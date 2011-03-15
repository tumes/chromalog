class CreateRunLogs < ActiveRecord::Migration
  def self.up
    create_table :run_logs do |t|
      t.integer :instrument_id
      t.integer :analytical_method_id
      t.integer :chromatographic_column_id
      t.date :run_date
      t.integer :pressure
      t.integer :flow_rate

      t.timestamps
    end
  end

  def self.down 
    drop_table :run_logs
  end
end
