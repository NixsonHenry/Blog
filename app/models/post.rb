class Post < ApplicationRecord
    ## Add an association to the post
    has_many :comments
    ## Add some validation to the model
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true
end
