class Post < ApplicationRecord
	belongs_to :user
	 validates :title, presence: true
	 resourcify
	
end
