# This migration comes from member (originally 20140319134649)
class AddRolesToMemberUsers < ActiveRecord::Migration
  def change
    add_column :member_users, :role, :string
  end
end
