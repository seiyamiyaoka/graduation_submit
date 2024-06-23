class User < ApplicationRecord
  has_many :blogs
  has_many :histories
  has_many :viewed_blogs, through: :histories, source: :blog

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
