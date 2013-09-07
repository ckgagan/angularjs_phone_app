class CreateConnectivities < ActiveRecord::Migration
  def change
    create_table :connectivities do |t|
      t.string :cell
      t.string :wifi
      t.string :bluetooth
      t.boolean :infrared
      t.boolean :gps
      t.references :phone, index: true

      t.timestamps
    end
  end
end
