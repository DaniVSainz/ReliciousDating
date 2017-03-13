class Profile < ApplicationRecord
  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "http://www.technodoze.com/wp-content/uploads/2016/03/default-placeholder.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  def new
  end
end
