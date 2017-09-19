class PostsController < ApplicationController
  
    # applying DRY
    before_action :find_post, only: [:show, :edit, :update, :destroy]
                    #def        #for     
    def index
      @posts = Post.all.order("created_at DESC")
  end

  def new
      @post = Post.new
  end
    
  def create           #permitting   
      @post = Post.new(post_params)
      
      if @post.save
          redirect_to @post
      else
          render 'new'
      end
  end
    
  def show
      # 'def find_post' is running:
      # @post = Post.find(params[:id])
  end
    
  def edit
      # 'def find_post' is running:
      # @post = Post.find(params[:id])
  end
    
  def update
      # 'def find_post' is running:
      # @post = Post.find(params[:id])
      
      if @post.update(post_params)
          redirect_to @post
      else
          render 'edit'
      end
  end
    
  def destroy
      @post.destroy
      redirect_to root_path
  end
    
  private
    
    def find_post
        @post = Post.find(params[:id])
    end
    
    def post_params
        # permit will allow to be written in the db
        params.require(:post).permit(:title, :body)
    end               #table post    #attributes
end