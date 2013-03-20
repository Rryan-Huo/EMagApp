class EmagsController < ApplicationController
	def index
	
        @emags=Emag.order("title asc").limit(30)
        if params[:search].present?
           k=params[:search]
           @emags=@emags.where("title LIKE ?","%#{k}%")
        end

        @emags = @emags.page(params[:page]).per(10)

	end
	def edit
		@emag=Emag.find(params[:id])

	end

	def update
		@emag=Emag.find(params[:id])
    respond_to do |format|
      if @emag.update_attributes(params[:emag])
        format.html { redirect_to @emag, notice: 'Emag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emag.errors, status: :unprocessable_entity }
      end
    end
	end
	def new
		@emag=Emag.new
		@emag.user_id=session[:user_id]
		respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @emag }
        end
		
	end
	def create
       @emag = Emag.new(params[:emag])
       @emag.user_id=session[:user_id]
    respond_to do |format|
      if @emag.save
        format.html { redirect_to @emag, notice: 'Emag was successfully created.' }
        format.json { render json: @emag, status: :created, location: @emag }
      else
        format.html { render action: "new" }
        format.json { render json: @emag.errors, status: :unprocessable_entity }
      end
     end
    end
    def show
    	@emag=Emag.find(params[:id])

       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @emag }
       end	
    end
   def destroy
   	 @emag=Emag.find(params[:id])
     @emag.destroy
     respond_to do |format|
      format.html { redirect_to emags_url }
      format.json { head :no_content }
    end
   	
   end
		
	


end	