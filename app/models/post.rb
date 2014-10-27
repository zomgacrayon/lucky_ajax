class Post < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true,
                   length: { minimum: 6 }

  def proper_title
    title.capitalize
  end
end
