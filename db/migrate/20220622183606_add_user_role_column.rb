class AddUserRoleColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :user_role_id, :integer
    add_column :students, :user_role_id, :integer
  end
end
