class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string :name
      t.string :handle
      t.string :email
      t.string :fbook
      t.string :twitter
      t.string :linkedin
      t.string :url
      t.string :skype
      t.string :aim

      t.timestamps
    end
  end
end
