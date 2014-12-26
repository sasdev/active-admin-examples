class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :city
      t.string :name
      t.string :image
      t.string :details
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :location
      t.string :gmap_lattitude
      t.string :gmap_logitude
      t.string :email
      t.string :mobile
      t.string :website

      t.timestamps
    end
  end
end
