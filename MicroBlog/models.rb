# class User < ActiveRecord::Base

# 	def following
# 		@user = User.all

# 	has_one :profile
# 	has_many :posts
# end 

# class Post < ActiveRecord::Base

# 	def following
# 	    @posts = Post.all

# 	belongs_to :user
# end

class User < ActiveRecord::Base
	has_many :posts
	has_many :users_addresses
	has_many :addresses, through: :users_addresses
	has_one :profile
end

class Post < ActiveRecord::Base
	belongs_to :user
end




class Profile < ActiveRecord::Base
    belongs_to :user
end
