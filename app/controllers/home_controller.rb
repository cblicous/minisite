class HomeController < ApplicationController
  def index
    @entries = Entry.all

    respond_to do |format| # Calles the responder on the AppkicationController .. do ... end is the parameter 
		#|format| stands for a single argument taken 
		
      format.html # index.html.erb
      format.json { render :json => @entries }
    end
  end

end
