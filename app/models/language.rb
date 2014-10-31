class Language < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :image, styles: { small: "100x100", med: "200x200", large: "300x300" }
  validates_attachment :image, :presence => true, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
