class User < ApplicationRecord

    # validates :name, :email, presence: true 
    validates :username, presence: true, uniqueness: true

end