class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  has_many :transactions

  def admin?
    self.role == 'admin'
  end
end
