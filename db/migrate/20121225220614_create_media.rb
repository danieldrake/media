class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :mode
      t.string :data
      t.references :talk
      t.references :confrence

      t.timestamps
    end
    add_index :media, :talk_id
    add_index :media, :confrence_id
  end
end
