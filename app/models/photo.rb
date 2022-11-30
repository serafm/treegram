class Photo<ActiveRecord::Base
  belongs_to :user
  has_many :tags, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # Validates that the user photo has a title
  validates :title, :presence => true
end