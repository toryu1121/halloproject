class HalloController < ApplicationController
  def index
    @hallo_list = Halloproject.order("created_at DESC").limit(10)
  end

  def create
    @hallo = Halloproject.new(params.permit(:hallo_text))
    @hallo_list = Halloproject.order("created_at DESC").limit(10)
    
    respond_to do |format|
      if @hallo.save
        format.js
      else
        render "index"
      end
    end    
  end


  def update
  end

  def destroy
  end
end
