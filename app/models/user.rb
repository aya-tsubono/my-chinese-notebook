class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :words

  validates :password, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/ }
  validates :registration_date, presence: true
end
