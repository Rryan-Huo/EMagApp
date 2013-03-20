class User < ActiveRecord::Base
  attr_accessible :name, :password
  
  validates_length_of :password, :minimum=>6

  has_secure_password

  validates_uniqueness_of :name
  validates_presence_of :name
  has_many :emags
  has_many :comments
  def num
  	@number=Emag.where(:user_id => self.id).count
  	return @number
  	
  end
  def author
    @author=Order.where(:user_id => self.id).author
    return @author
    
  end
end
