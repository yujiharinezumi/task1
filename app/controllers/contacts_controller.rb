class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    # @contact.save
    if @contact.save(contact_params)

    redirect_to "/contacts/new"
    else
      render 'new'
    end
  end

  private
  def contact_params
   params.require(:contact).permit(:content, :email,:name )
  end

end
