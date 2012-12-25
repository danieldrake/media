class Presenter < ActiveRecord::Base
  attr_accessible :aim, :email, :fbook, :handle, :linkedin, :name, :skype, :twitter, :url

  has_and_belongs_to_many :talks
end
