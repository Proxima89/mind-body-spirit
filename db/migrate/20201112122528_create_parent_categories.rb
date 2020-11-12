class CreateParentCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :parent_categories do |t|
      t.string :body
      t.string :mind
      t.string :spirit

      t.timestamps
    end
  end
end
