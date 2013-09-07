class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :front
      t.string :rear
      t.string :features
      t.references :phone, index: true

      t.timestamps
    end
  end
end
