class Tweet < ApplicationRecord
  belongs_to :user

  def self.search(search)
    search ? where('text LIKE ?', "%#{search}%") : all
  end
  
end
