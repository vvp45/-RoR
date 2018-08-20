#this class is inherited from ApplicationRecord.
require 'csv'
class Article < ApplicationRecord
	# has_many :comments
	validates :title, presence: true,
					length: { minimum: 5 }

	def self.to_csv #Download File 
		CSV.generate do |csv|
			csv << column_names
			all.each do |article|
				csv << article.attributes.values_at(*column_names)
			end
		end
	end
end
