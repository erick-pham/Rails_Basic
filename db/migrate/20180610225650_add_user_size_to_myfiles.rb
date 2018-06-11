class AddUserSizeToMyfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :myfiles, :user_id, :integer
    add_column :myfiles, :size, :bigint
  end
end
