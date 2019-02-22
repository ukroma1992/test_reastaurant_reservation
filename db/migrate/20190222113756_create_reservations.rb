class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :number_of_guests
      t.datetime :from
      t.datetime :to
      t.references :table, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
