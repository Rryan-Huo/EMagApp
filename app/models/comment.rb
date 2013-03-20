class Comment < ActiveRecord::Base
  attr_accessible :comment, :emag_id, :user_id
  belongs_to :user
  belongs_to :emag

  def emag
  	@emag=Emag.where(:emag_id => self.emag_id)
  	return @emag
  end
end
