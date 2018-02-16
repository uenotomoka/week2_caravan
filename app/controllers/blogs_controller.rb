class BlogsController < ApplicationController
	def index
		@blogs = Blog.all.reverse_order
    end

    def new
    	@blog = Blog.new
    end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to '/blogs'
  end

  def show
  	@blog = Blog.find(params[:id])
  end

 private

  def blog_params
  	params.require(:blog).permit(:title, :body, :category)
  end

end
