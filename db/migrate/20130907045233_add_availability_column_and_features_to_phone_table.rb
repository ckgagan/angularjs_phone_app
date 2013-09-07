class AddAvailabilityColumnAndFeaturesToPhoneTable < ActiveRecord::Migration
  def change
    add_column :phones, :availability, :string
    add_column :phones, :additional_features, :text

  end
end
