class Author < ActiveRecord::Base
    validates :name, length: { minimum: 1 }
    validates :email, presence: true, uniqueness: true 
end
