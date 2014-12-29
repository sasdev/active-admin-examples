class CreateVariations < ActiveRecord::Migration
  def change
    create_table :variations do |t|
      #strings
      t.string :eg_string
      t.string :eg_string_select
      t.string :eg_string_select_constants
      t.string :eg_string_select_country
      t.string :eg_string_datalist
      t.string :eg_string_file
      t.string :eg_string_image


      #Booleans
      t.boolean :eg_boolean
      t.boolean :eg_boolean_dropdown

      #dates
      t.date :eg_date
      t.date :eg_date_picker

      #t.datetime :eg_datetime
      #t.time :eg_time
      #decimal
      #t.decimal :eg_decimal
      #t.float :eg_float
      #integer
      #t.integer :eg_integer
      t.integer :eg_integer_slider
      #text
      #t.text :eg_text

      t.timestamps
    end
  end
end
