class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :tests, dependent: :destroy
         has_many :favorites, dependent: :destroy
         
          def already_favorited?(test)
           self.favorites.exists?(test_id: test.id)
          end
end

