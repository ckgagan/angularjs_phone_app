class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.string :length
      t.string :breadth
      t.string :weigth
      t.references :phone, index: true

      t.timestamps
    end
  end
end
