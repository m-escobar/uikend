class ChangeCpfToBeStringInProfiles < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :cpf, :string
  end
end
