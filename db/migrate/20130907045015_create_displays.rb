class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :screen_size
      t.string :screen_resolution
      t.boolean :touch_screen
      t.references :phone, index: true

      t.timestamps
    end
  end
end
