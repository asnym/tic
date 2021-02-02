class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true, format: { with: /\A\d{7}[-][z]\d{3}\z/ }

  has_many :articles
  has_many :reviews
end
