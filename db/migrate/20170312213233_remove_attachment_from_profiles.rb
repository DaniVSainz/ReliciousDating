class RemoveAttachmentFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :profiles, :avatar
  end
end
