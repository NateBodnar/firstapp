class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
          :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
 									:name, :bio, :city, :image
 	validate :bio, presence: true, :length => {:maximum => 3000}
 	validate :city, presence: true, :length => {:maximum => 25}
 	validates_attachment :image, content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']}, size: { less_than: 5.megabytes }
  # attr_accessible :title, :body

  has_many :projects, dependent: :destroy
  
  has_attached_file :image, styles: { medium: "320x240>" }
end
 