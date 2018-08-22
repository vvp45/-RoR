class Post < ApplicationRecord

  mount_uploader :image, ImageUploader


 # def self.as_csv
  #CSV.generate do |csv|
   # csv << column_names
    #all.each do |item|
     # csv << item.attributes.values_at(*column_names)
    #end
  #end
#end

def self.to_csv(options = {})
  desired_columns = ["id", "title", "body", "image"]
  CSV.generate(options) do |csv|
    csv << desired_columns
    all.each do |post|
      csv << post.attributes.values_at(*desired_columns)
    end
  end
end

end
