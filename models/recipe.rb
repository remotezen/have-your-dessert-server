class Recipe < ActiveRecord::Base
  has_many :steps
  has_permalink :title
  mount_uploader :image, Uploader
  belongs_to :post

end
