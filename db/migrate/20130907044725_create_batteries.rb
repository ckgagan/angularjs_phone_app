class CreateBatteries < ActiveRecord::Migration
  def change
    create_table :batteries do |t|
      t.string :battery_type
      t.string :talk_time
      t.string :standby
      t.references :phone, index: true

      t.timestamps
    end
  end
end
