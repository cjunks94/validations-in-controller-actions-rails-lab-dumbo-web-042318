class Post < ActiveRecord::Base
  # Add validations to Post such that...
  #
  #   The title cannot be blank
  #   The category is either "Fiction" or "Non-Fiction"
  #   The content is at least 100 characters long.
validates :title, presence: true
validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
validates :content, length: {minimum: 100}

  # def category_valid
  #   if self.category == "Fiction" || self.category == "Non-Fiction"
  #   else
  #     false
  #   end
  # end
end
