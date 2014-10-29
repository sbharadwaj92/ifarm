class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates_presence_of    :password, on: :create
  validates_confirmation_of :password, on: :create

end
