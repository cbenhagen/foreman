class CreateLookupValues < ActiveRecord::Migration
  def self.up
    create_table :lookup_values do |t|
      t.string :priority
      t.string :value
      t.references :lookup_key

      t.timestamps
    end
    add_index :lookup_values, :priority
  end

  def self.down
    remove_index :lookup_values, :priority
    drop_table :lookup_values
  end
end
