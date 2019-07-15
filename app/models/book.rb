class Book < ApplicationRecord
  validates_presence_of :title, :num_pages, :pub_year
  has_many :author_books
  has_many :authors, through: :author_books
end
