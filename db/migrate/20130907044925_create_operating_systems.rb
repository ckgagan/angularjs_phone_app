class CreateOperatingSystems < ActiveRecord::Migration
  def change
    create_table :operating_systems do |t|
      t.string :os
      t.string :ui
      t.string :version
      t.references :phone, index: true

      t.timestamps
    end
  end
end
