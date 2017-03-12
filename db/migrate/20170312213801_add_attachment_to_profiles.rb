class AddAttachmentToProfiles < ActiveRecord::Migration[5.0]
  def self.up
    change_table :profiles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :profiles, :avatar
  end
end
