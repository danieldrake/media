class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :media, :type, :kind
  end
end