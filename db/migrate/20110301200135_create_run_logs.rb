class CreateRunLogs < ActiveRecord::Migration
  def self.up
    create_table :run_logs do |t|
      t.integer :instrument_id
      t.integer :analytical_method_id
      t.integer :chromatographic_column_id
      t.date :run_date
      t.decimal :pressure, :precision => 12, :scale => 4
      t.decimal :flow_rate, :precision => 12, :scale => 4

      t.timestamps
    end
  end

  def self.down 
    drop_table :run_logs
  end
end
