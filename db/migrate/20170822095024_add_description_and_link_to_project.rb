class AddDescriptionAndLinkToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :description, :varchar
    add_column :projects, :link, :varchar
  end
end
