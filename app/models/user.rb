class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  validates :family_name, presence: true, length: { maximum: 20 }
  validates :given_name,  presence: true, length: { maximum: 20 }
  has_many :customers
  
  def full_name
    full_name = family_name + given_name
    full_name
  end
end