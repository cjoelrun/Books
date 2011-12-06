class Book < ActiveRecord::Base
  has_many :bookmarks
  has_many :users, :through => :bookmarks
  has_many :authors
end
