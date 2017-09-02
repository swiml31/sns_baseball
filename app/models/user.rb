class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  	validates :name, presence: true, uniqueness: true

  has_many :posts
  has_many :photos
  attachment :profile_image
  # extend Refile::Attachment

  # attr_accessor :profile_image_id

  # attachment :profile_image
end