require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :num_pages }
    it { should validate_presence_of :pub_year }
  end

  describe 'relationships' do
    it { should have_many(:authors).through(:author_books)}
  end
end
