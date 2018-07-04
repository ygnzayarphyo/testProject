class StaticPagesController < ApplicationController
  attr_accessor :username

  def home
    @blog_posts = BlogPost.all
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def About
  end

  def Lifestyle
    @blog_posts = BlogPost.where(category: "Lifestyle")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def Entertainment
    @blog_posts = BlogPost.where(category: "Entertainment")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def Tech
    @blog_posts = BlogPost.where(category: "Tech")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def Food
    @blog_posts = BlogPost.where(category: "Food")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def Sports
    @blog_posts = BlogPost.where(category: "Sports")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def Videos
    @blog_posts = BlogPost.where(category: "Videos")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end

  def Cinema
    @blog_posts = BlogPost.where(category: "Cinema")
    @blog_posts=@blog_posts.paginate(page: params[:page], per_page: 8)
  end
end
