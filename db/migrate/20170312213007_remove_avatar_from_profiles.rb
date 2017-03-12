class RemoveAvatarFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :avatar
  end
end
