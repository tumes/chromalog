class CreateAnalytes < ActiveRecord::Migration
  def self.up
    create_table :analytes do |t|
      t.string :name
      t.integer :analytical_method_id

      t.timestamps
    end
  end

  def self.down
    drop_table :analytes
  end
end
