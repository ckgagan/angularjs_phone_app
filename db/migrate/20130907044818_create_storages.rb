class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :ram
      t.string :flash
      t.string :phone
      t.references :phone, index: true

      t.timestamps
    end
  end
end
