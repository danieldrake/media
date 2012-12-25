class Talk < ActiveRecord::Base
  attr_accessible :description, :name, :presenters

  validates :name,  :presence => true,
                    :length => { :minimum => 5 }

  has_and_belongs_to_many :presenters
  
  # returns an array containing presenter's names and links to their profiles
  def peoplelinks
  	links = Array.new
  	presenters.each do |p|
  		if p[:handle].length > 1 then
  			name = "#{p[:name].split(" ")[0]} \"#{p[:handle]}\" #{p[:name].split(" ")[1]}"
  		else
  			name = p[:name]
  		end

  		links.push(:name => name, :link => "presenters/#{p[:id]}")
  	end
  	return links
  end

end