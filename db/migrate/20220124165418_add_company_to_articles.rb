class AddCompanyToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :company, :string
  end
end
