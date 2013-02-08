class AddIndexToPresenterTalks < ActiveRecord::Migration
  def change
    add_column :presenters_talks, :id, :primary_key
  end
end
