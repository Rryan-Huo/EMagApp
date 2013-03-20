class OrdersController < ApplicationController
	def index
		
	end
def new
	@order=Order.new
	@order.user_id=session[:user_id]
	@order.author=params[:author]
	respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @order }
        end
end
def create
	@order=Order.new(params[:order])
      respond_to do |format|
      if @order.save
        format.html { redirect_to emags_url, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end   	
	
end
def destroy
     @order=Order.find(params[:id])
     @order.destroy
     respond_to do |format|
      format.html { redirect_to emags_url }
      format.json { head :no_content }
    end
   end 

end