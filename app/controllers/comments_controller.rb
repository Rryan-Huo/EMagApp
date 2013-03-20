class CommentsController < ApplicationController
    def index
    	
    end
    def new
    	@comment=Comment.new
        
    	@comment.user_id=session[:user_id]
    	@comment.emag_id=params[:id]
    	respond_to do |format|
         format.html # new.html.erb
         format.json { render json: @comment }
        end
    	
    end
    def create

    	@comment=Comment.new(params[:comment])
        
        respond_to do |format|
      if @comment.save
        format.html { redirect_to emags_url, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end   	
    end
   def destroy
     @comment=Comment.find(params[:id])
     @comment.destroy
     respond_to do |format|
      format.html { redirect_to emags_url }
      format.json { head :no_content }
    end
   end 

    



end