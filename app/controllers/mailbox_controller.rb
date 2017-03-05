class MailboxController < ApplicationController
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def inbox
    @inbox = mailbox.inbox
    @active = :inbox
  end

  def sent
    @sent = mailbox.sentbox
    @active = :sent
  end

  def trash
    @trash = mailbox.trash
    @active = :trash
  end

end
