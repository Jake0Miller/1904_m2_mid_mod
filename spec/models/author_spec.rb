require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many(:books).through(:author_books) }
  end

  describe 'methods' do
    before :each do
      @author_1 = Author.create!(name: 'Frank')
      @book_1 = @author_1.books.create!(title: 'Short Book', num_pages: 50, pub_year: 2005)
      @book_2 = @author_1.books.create!(title: 'Long Book', num_pages: 500, pub_year: 2006)
    end

    it 'can get average book length' do
      expect(@author_1.avg_book_length).to eq(275)
    end
  end
end
