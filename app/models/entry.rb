class Entry < ActiveRecord::Base

 attr_accessible :name,:image,:content,:id,:title,:tags_attributes
 
 has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
 # Method mount_uploader needed to attach uploader
 mount_uploader :image, ImageUploader
end
