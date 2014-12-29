class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.string :placeholder

      t.timestamps
    end
  end
end
