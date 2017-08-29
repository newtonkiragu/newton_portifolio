class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.string :name
      t.string :body
      t.string :email

      t.timestamps
    end
  end
end