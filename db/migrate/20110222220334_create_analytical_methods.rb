class CreateAnalyticalMethods < ActiveRecord::Migration
  def self.up
    create_table :analytical_methods do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :analytical_methods
  end
end
