class ContactsController < ApplicationController
  before_action :set_kid

  def index
    @contact = Contact.new
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
