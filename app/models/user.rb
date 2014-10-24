class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :username, uniqueness: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

end
