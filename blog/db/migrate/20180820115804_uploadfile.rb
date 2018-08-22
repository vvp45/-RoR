class Uploadfile < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :string, :attachment
  end
end
