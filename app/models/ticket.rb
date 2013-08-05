class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  attr_accessible :asset, :description, :title
  has_attached_file :asset
  validates :title, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 10 }
end
