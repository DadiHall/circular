class PagesController < ApplicationController
  def index
  	@contact = Contact.new
  end

  def energy_anal
  end

  def lca
  end


  

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
