class AddCategoryIdToAffiliates < ActiveRecord::Migration[6.0]
  def change
    add_column :affiliates, :category_id, :integer
  end
end
