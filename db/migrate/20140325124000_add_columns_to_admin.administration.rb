# This migration comes from administration (originally 20140325123942)
class AddColumnsToAdmin < ActiveRecord::Migration
  def change
    add_column :administration_admins, :username, :string
    add_column :administration_admins, :first_name, :string
    add_column :administration_admins, :last_name, :string
  end
end
