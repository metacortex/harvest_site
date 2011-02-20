class Asset < ActiveRecord::Base
  has_attached_file :attachment, :styles => { :big => "640x480", :standard => "480x360>" }
end
