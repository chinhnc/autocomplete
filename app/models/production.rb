class Production < ActiveRecord::Base

  def self.search(term)
    where("name LIKE :term or category LIKE :term", term: "%#{term}%")
  end
  
end