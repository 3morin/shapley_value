class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :value_a
      t.integer :value_b

      t.timestamps
    end
  end
end
