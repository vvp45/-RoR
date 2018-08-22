class AddImageToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :string ,:image 
  end
end
