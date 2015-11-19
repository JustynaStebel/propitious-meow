class AddFacebookFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :post, :text
    add_column :users, :post_count, :integer
    add_column :users, :like_count, :integer
    add_column :users, :share_count, :integer
  end
end
