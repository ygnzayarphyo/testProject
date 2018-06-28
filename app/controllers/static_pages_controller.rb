class StaticPagesController < ApplicationController
  attr_accessor :username

  def home
    @blog_posts = BlogPost.all
  end

  def About
  end

  def Lifestyle
  end

  def Entertainment
  end

  def Tech
  end

  def Food
  end

  def Sports
  end

  def Videos
  end

  def Cinema
  end
end
