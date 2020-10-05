class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100, too_short: "%{count} characters is too short."}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid choice"}
end
