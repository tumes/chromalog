class CreateStandardAmounts < ActiveRecord::Migration
  def self.up
    create_table :standard_amounts do |t|
      t.string :name
      t.decimal :amount, :precision => 12, :scale => 4
      t.integer :analytical_standard_id
      t.string :batch

      t.timestamps
    end
  end

  def self.down
    drop_table :standard_amounts
  end
end
