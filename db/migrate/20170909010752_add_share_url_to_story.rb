class AddShareUrlToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :share_url, :string
  end
end
