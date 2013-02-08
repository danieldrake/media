class AddTypeToMedia < ActiveRecord::Migration
  def change
    add_column :media, :type, :string
    add_column :media, :size, :integer
  end
end
