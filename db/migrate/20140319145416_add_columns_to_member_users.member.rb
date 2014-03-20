# This migration comes from member (originally 20140319145348)
class AddColumnsToMemberUsers < ActiveRecord::Migration
  def change
    add_column :member_users, :username, :string
    add_column :member_users, :first_name, :string
    add_column :member_users, :last_name, :string
  end
end
