class TagsController < ApplicationController

  # GET /tags/1
  # GET /tags/1.json
  def show
      
      # @tags = Tag.where(:name => params[:name])
      
      if ( params[:name] != nil) 
          @entries =   Entry.includes([:tags]).where(['tags.name = ?', params[:name]]).all
      else 
         @entries = Entry.all
      end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @entry }
    end
  end

end
