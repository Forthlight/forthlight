# This migration comes from administration (originally 20140325125454)
class RemoveColumnsFromAdministrationAdmin < ActiveRecord::Migration
  def change
    remove_column :administration_admins, :reset_password_token, :string
    remove_column :administration_admins, :reset_password_sent_at, :datetime
  end
end
