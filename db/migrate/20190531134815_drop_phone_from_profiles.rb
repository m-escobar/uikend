class DropPhoneFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :phone
  end
end
