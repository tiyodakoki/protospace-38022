class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :prototypes
  has_many :comments
  validates :position, presence:true
  validates :profile, presence:true
  validates :accupation, presence:true
  validates :name, presence:true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
