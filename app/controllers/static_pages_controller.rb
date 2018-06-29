class StaticPagesController < ApplicationController
  attr_accessor :username

  def home
    @blog_posts = BlogPost.all
  end

  def About
  end

  def Lifestyle
    @blog_posts = BlogPost.where(category: "Lifestyle")
  end

  def Entertainment
    @blog_posts = BlogPost.where(category: "Entertainment")
  end

  def Tech
    @blog_posts = BlogPost.where(category: "Tech")
  end

  def Food
    @blog_posts = BlogPost.where(category: "Food")
  end

  def Sports
    @blog_posts = BlogPost.where(category: "Sports")
  end

  def Videos
    @blog_posts = BlogPost.where(category: "Videos")
  end

  def Cinema
    @blog_posts = BlogPost.where(category: "Cinema")

  end
end
