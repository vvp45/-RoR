#this class is inherited from ApplicationRecord.
class Article < ApplicationRecord
	has_many :comments
	validates :title, presence: true,
                    length: { minimum: 5 } 
end
