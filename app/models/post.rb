#!/usr/bin/env ruby
class Post < ActiveRecord::Base
  has_many :comments
  
  validates_presence_of :title, :content
 validates_length_of :content, :minimum => 10, :message => "Isn't 10 lettters"
  validates_length_of :title,  :within => 5..50
  def Post.all_published
    Post.find_all_by_published(true).reverse
  end
end
  