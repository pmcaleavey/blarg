class PostsController < ApplicationController
  def index#get posts
    @posts = Post.all##posts are all the blog posts#eventually use a gem to get a certain amount
    render :index#, locals: { posts: posts }#what is passed in VIEWS ##call template, pass data to template --WHAT TEMPLATE??
    ##render :index - (same as irb in sinatra) - rails creates this on its own if I don’t
  end

  def new
    render :new
    #render looks to the 'view' foler for the 'post'(controller) folder, for the 'new.html.erb'
  end

  def create
    new_post = Post.create(title: params["title"],
                           content: params["content"])
    redirect_to :root#after, take the user here
    #^^directs to another method
  end

  def edit#display form
    @post = Post.find(params["id"])#gets individual id from params hash
    render :edit


    #render :edit, locals: { post: post }#goes to edit view- creating locals variable named post = post
    #edit- knows to look in the views folder, for posts folder (bec that's the controller name), edit.html.erb,
    #post: post - 'post:' is what's passed in the views - 'post' is local variable in edit
    #edit_post = Post.update(title: params["title"], content: params["content"])
  end

  def update
    post = Post.find(params[:id])#have post user wants to update
    post.update(title: params["title"], content: params["content"])
    #calling Active Record 'update' method on post object(instance of post model)
    #title: & content: match Post table - params["anyname"] -params['word']- is in edit _tag
    redirect_to root_path

    #create & update don't show/render, work w db
    #update post based on params passed in
  end

  def destroy
    post = Post.find(params["id"])
    post.destroy
    redirect_to :root
  end

  def show
    #post = Post.find(params["id"])  - can use this way
    #render :show, locals: { post: post }

    @post = Post.find(params["id"])
    render :show
  end
end
