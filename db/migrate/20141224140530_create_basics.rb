class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string :eg_string
      #t.binary :eg_binary
      t.boolean :eg_boolean
      t.date :eg_date
      t.datetime :eg_datetime
      t.time :eg_time
      t.decimal :eg_decimal
      t.float :eg_float
      t.integer :eg_integer
    #  t.primary_key :eg_primary_key
      t.text :eg_text

      t.timestamps
    end
  end
end
