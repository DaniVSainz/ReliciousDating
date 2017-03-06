class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable , :omniauthable

  has_many :identities

  acts_as_messageable

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end


  # def twitter
  #   identities.where( :provider => "twitter" ).first
  # end
  #
  # def twitter_client
  #   @twitter_client ||= Twitter.client( access_token: twitter.accesstoken )
  # end

  def facebook
    identities.where( :provider => "facebook" ).first
  end

  def facebook_client
    @facebook_client ||= Facebook.client( access_token: facebook.accesstoken )
  end
  #
  # def instagram
  #   identities.where( :provider => "instagram" ).first
  # end
  #
  # def instagram_client
  #   @instagram_client ||= Instagram.client( access_token: instagram.accesstoken )
  # end
  #
  # def google_oauth2
  #   identities.where( :provider => "google_oauth2" ).first
  # end
  #
  # def google_oauth2_client
  #   if !@google_oauth2_client
  #     @google_oauth2_client = Google::APIClient.new(:application_name => 'HappySeed App', :application_version => "1.0.0" )
  #     @google_oauth2_client.authorization.update_token!({:access_token => google_oauth2.accesstoken, :refresh_token => google_oauth2.refreshtoken})
  #   end
  #   @google_oauth2_client
  # end


end
