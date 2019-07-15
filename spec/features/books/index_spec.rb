require 'rails_helper'

RSpec.describe 'Books Index Page' do
  describe 'As a visitor' do
    before :each do
      @book_1 = Book.create!(title: 'Short Book', num_pages: 50, pub_year: 2005)
      @book_2 = Book.create!(title: 'Long Book', num_pages: 500, pub_year: 2006)
      @author_1 = @book_1.authors.create!(name: 'Frank')
      @author_2 = @book_2.authors.create!(name: 'George')
    end

    it 'I can see a list of all books' do
      visit books_path

      within "#book-#{@book_1.id}" do
        expect(page).to have_content("Title: #{@book_1.title}")
        expect(page).to have_content("Number of Pages: #{@book_1.num_pages}")
        expect(page).to have_content("Publication Year: #{@book_1.pub_year}")
        expect(page).to have_link(@author_1.name)
      end

      within "#book-#{@book_2.id}" do
        expect(page).to have_content("Title: #{@book_2.title}")
        expect(page).to have_content("Number of Pages: #{@book_2.num_pages}")
        expect(page).to have_content("Publication Year: #{@book_2.pub_year}")
        expect(page).to have_link(@author_2.name)
      end
    end
  end
end
