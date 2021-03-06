class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :destroy, :new, :edit]
  CATEGORY = ["Lifestyle", "Entertainment", "Tech", "Food", "Sports", "Videos", "Cinema"]

  # GET /blog_posts
  # GET /blog_posts.json
  def index
    @blog_posts = BlogPost.all
    @blog_posts=@blog_posts.paginate(page: params[:page])
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.json
  def show
  end

  #search?id=64&keywords=
  def search
    @keywords=params[:keywords]
    #@blog_posts=BlogPost.where(id: @keywords) || BlogPost.where(title: @keywords) || BlogPost.where(content: @keywords) || BlogPost.where(category: @keywords)
    @blog_posts=BlogPost.where("LOWER(title) LIKE ? OR LOWER(content) LIKE ? OR LOWER(category) LIKE ?", "%#{@keywords.downcase}%","%#{@keywords.downcase}%", "%#{@keywords.downcase}%")
    @blog_posts=@blog_posts.paginate(page: params[:page])
  end

  # GET /blog_posts/new
  def new
    @blog_post = BlogPost.new
  end

  # GET /blog_posts/1/edit
  def edit
  end

  # POST /blog_posts
  # POST /blog_posts.json
  def create
    @blog_post = BlogPost.new(blog_post_params)

    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully created.' }
        format.json { render :show, status: :created, location: @blog_post }
      else
        format.html { render :new }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_posts/1
  # PATCH/PUT /blog_posts/1.json
  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_post }
      else
        format.html { render :edit }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.json
  def destroy
    @blog_post.destroy
    respond_to do |format|
      format.html { redirect_to blog_posts_url, notice: 'Blog post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_post
      @blog_post = BlogPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_post_params
      params.require(:blog_post).permit(:title, :content, :picture, :category, :user_id)
    end

end
