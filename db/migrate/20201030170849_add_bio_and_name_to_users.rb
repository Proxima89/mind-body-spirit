class AddBioAndNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :name, :string
  end
end
