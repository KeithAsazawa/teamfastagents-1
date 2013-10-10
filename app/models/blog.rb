class Blog < ActiveRecord::Base
  attr_accessible :content, :title, :assets_attributes, :image, :assets
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
