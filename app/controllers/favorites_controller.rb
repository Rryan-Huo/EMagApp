class FavoritesController < ApplicationController
  def index
		
	end
def new
	@favorite=Favorite.new
	@favorite.user_id=session[:user_id]
	@favorite.title=params[:title]
	respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @favorite }
        end
end
def create
	@favorite=Favorite.new(params[:favorite])
      respond_to do |format|
      if @favorite.save
        format.html { redirect_to emags_url, notice: 'Favorite was successfully created.' }
        format.json { render json: @favorite, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end   	
	
end
def destroy
     @favorite=Favorite.find(params[:id])
     @favorite.destroy
     respond_to do |format|
      format.html { redirect_to emags_url }
      format.json { head :no_content }
    end
   end 


end