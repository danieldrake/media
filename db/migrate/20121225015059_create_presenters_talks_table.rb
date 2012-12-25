class CreatePresentersTalksTable < ActiveRecord::Migration
  def self.up
    create_table :presenters_talks, :id => false do |t|
        t.references :presenter
        t.references :talk
    end
    add_index :presenters_talks, [:presenter_id, :talk_id]
    add_index :presenters_talks, [:talk_id, :presenter_id]
  end

  def self.down
  	drop_table :presenters_talks
  end
end
