class ChangeUserIdDatatype < ActiveRecord::Migration
  def change
    change_column :posts, :user_id, :integer
  end
end
