class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.integer :phone_id

      t.timestamps
    end
  end
end
