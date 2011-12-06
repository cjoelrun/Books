class Author < ActiveRecord::Base
  has_many :publications
  has_many :books, :through => :publications
end
