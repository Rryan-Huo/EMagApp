class Emag < ActiveRecord::Base
  attr_accessible :author, :description, :content, :title, :user_id
  belongs_to :user
  has_many :comments
  def comment
  	@comment=Comment.where(:emag_id => self.emag_id)
  	return @comment
  	
  end
end
