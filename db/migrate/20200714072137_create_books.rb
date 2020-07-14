class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :titile
      t.integer :stock

      t.timestamps
    end
  end
end
