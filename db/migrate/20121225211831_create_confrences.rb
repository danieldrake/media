class CreateConfrences < ActiveRecord::Migration
  def change
    create_table :confrences do |t|
      t.string :name
      t.integer :year
      t.string :location

      t.timestamps
    end
  end
end
