class AddAvatarCitizenIdNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :citizen_id_front_side, :string
    add_column :users, :citizen_id_back_side, :string
  end
end
