class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         CLASS_LIST = ["Boza", "Limonada", "Nada", "Oranjada"]       
 
end
