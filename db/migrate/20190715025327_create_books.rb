class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :num_pages
      t.integer :pub_year
    end
  end
end
