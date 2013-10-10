class Asset < ActiveRecord::Base
	belongs_to :blog
	has_attached_file :asset, :styles => { :large => "640x480", :medium => "300x300", :thumb => "100x100"}
  attr_accessible :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at, :blog_id, :asset

  def asset_url
  	asset_url(:medium)
  end

end


