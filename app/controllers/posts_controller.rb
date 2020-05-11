class PostsController < ApplicationController
     # show all of our posts
            def index
              @posts = Post.all.order('updated_at DESC')
            end
          
            def new
              @post = Post.new # we need an instance of our resource to be used with `form_with`
            end
          
            def create
              @post = Post.new(params.require(:post).permit(:author, :body))
              #tell active record to goahead and run the INSERT SQL query against our db. Returns true if it saves, returns false if it doesn't save
              if @post.save
                redirect_to posts_path
              else
                render :new
              end
            end
          
            def show
              id = params[:id]
              @post = Post.find(id)
        
            end
          
            def destroy
              id = params[:id]
              @post = Post.find(id)
              @post.destroy
              redirect_to posts_path
            end
          
            def edit
              id = params[:id]
              @post = Post.find(id)
            end
          
            def update
              id = params[:id]
              @post = Post.find(id)
              if @post.update(params.require(:post).permit(:author, :body))
                redirect_to post_path(@post)
              else
                render :edit
              end
            end
          
end
