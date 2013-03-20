class Order < ActiveRecord::Base
  attr_accessible :author, :user_id
  belongs_to :user

  def user
  	 @user=User.where(:user_id => self.user_id)
  	 return @user
  end
  
end
