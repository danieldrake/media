class Medium < ActiveRecord::Base
  belongs_to :talk
  belongs_to :confrence
  attr_accessible :data, :mode

end
