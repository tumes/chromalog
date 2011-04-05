class CreateStandardAmounts < ActiveRecord::Migration
  def self.up
    create_table :standard_amounts do |t|
      t.string :name
      t.float :amount
      t.integer :analytical_method_id
      t.string :batch

      t.timestamps
    end
  end

  def self.down
    drop_table :standard_amounts
  end
end
