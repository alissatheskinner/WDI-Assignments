class User < ApplicationRecord
	has_many :posts, dependent: :destroy 
	has_many :comments, dependent: :destroy
	has_many :friendships
	has_many :friends, :through => :friendships

# def full_name 
# 	@user=User.first
# 	@user.full_name
# end


end
