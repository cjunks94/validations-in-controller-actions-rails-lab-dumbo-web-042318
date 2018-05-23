class Author < ActiveRecord::Base
  # Add validations to Author such that...
  #
  #   The name cannot be blank
  #   The e-mail is unique
validates :name, presence: true
validates :email, presence: true, uniqueness: true

end
