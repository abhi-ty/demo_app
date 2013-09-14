class Microspost < ActiveRecord::Base
  attr_accessible :content, :user_id

  belongs_to :user

  validates :content, :length => { :maximum => 10, :minimum => 2}
  validates :user_id, :presence => true


end
