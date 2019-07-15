require 'rails_helper'

RSpec.describe 'Authors Show Page' do
  describe 'As a visitor' do
    before :each do
      @book_1 = Book.create!(title: 'Short Book', num_pages: 50, pub_year: 2005)
      @book_2 = Book.create!(title: 'Long Book', num_pages: 500, pub_year: 2006)
      @author_1 = @book_1.authors.create!(name: 'Frank')
      @author_2 = @book_2.authors.create!(name: 'George')
    end

    it 'I can link to the author from the books index' do
      visit books_path

      within "#book-#{@book_1.id}" do
        click_on @author_1.name
      end

      expect(page).to have_content("#{@author_1.name}'s Books")

      within "#book-#{@book_1.id}" do
        expect(page).to have_content("Title: #{@book_1.title}")
      end

      expect(page).to have_content('Average book length: 50 pages')
    end
  end
end
