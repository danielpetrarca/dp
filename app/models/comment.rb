class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :name
  validates_presence_of :body, :name


end
