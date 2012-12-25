class Talk < ActiveRecord::Base
  attr_accessible :description, :name, :presenters

  validates :name,  :presence => true,
                    :length => { :minimum => 5 }

  has_and_belongs_to_many :presenters
end
