class RenameUserFields < ActiveRecord::Migration
  def change
    rename_column :users, :like_count, :likes
    rename_column :users, :share_count, :shares
    remove_column :users, :post_count
  end
end
