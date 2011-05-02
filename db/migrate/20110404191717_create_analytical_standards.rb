class CreateAnalyticalStandards < ActiveRecord::Migration
  def self.up
    create_table :analytical_standards do |t|
      t.string :analytical_method
      t.string :user
      t.date :preparation_date
      t.decimal :volume, :precision => 12, :scale => 4
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :analytical_standards
  end
end
