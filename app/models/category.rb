class Category < ActiveRecord::Base
  has_many :posts

  def proper_title
    title.capitalize
  end
end
