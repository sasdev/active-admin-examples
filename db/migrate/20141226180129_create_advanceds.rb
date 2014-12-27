class CreateAdvanceds < ActiveRecord::Migration
  def change
    create_table :advanceds do |t|

      t.timestamps
    end
  end
end
