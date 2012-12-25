class AddMediaColumns < ActiveRecord::Migration
  def change
  	add_column :media, :height, :integer
  	add_column :media, :width, :integer
  	add_column :media, :length, :integer
  end
end
