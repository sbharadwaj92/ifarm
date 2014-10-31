class Symptom < ActiveRecord::Base
  belongs_to :crop
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_attached_file :image, styles: { small: "100x100", med: "200x200", large: "300x300" }
  validates_attachment :image, :presence => true, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
