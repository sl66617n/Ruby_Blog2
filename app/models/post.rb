class Post < ApplicationRecord

	# create new post, make sure we have title and body
	validates :title, presence: true, length: {minimum: 5 }
	validates :body, presennce: true

	  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  	  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end


# so if we run rails s again
# go to localhost:3000/admin/posts/new
 # will see image file name, type, size, image updated...etc
