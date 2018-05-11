class PostsController < ApplicationController

# most recent post show
def index
	@posts = Post.all.order('created_at DESC')
end


# equal id
def show
	@post = Post.find(param[:id])
	@posts = Post.order("created_at desc").limit(4).offset(1)
end

private
	def post_params
		params.require(:post).permit(:title, :body)
	end	

end
