class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :number
      t.integer :num_seats
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
