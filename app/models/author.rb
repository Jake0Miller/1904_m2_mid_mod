class Author < ApplicationRecord
  validates_presence_of :name
  has_many :author_books
  has_many :books, through: :author_books

  def avg_book_length
    books.average(:num_pages)
  end
end
