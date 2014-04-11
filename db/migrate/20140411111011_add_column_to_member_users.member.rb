# This migration comes from member (originally 20140411110809)
class AddColumnToMemberUsers < ActiveRecord::Migration
  def change
    add_column :member_users, :description, :text
  end
end
