class Crop < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, :presence => true, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
