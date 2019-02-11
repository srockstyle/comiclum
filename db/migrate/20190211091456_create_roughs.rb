class CreateRoughs < ActiveRecord::Migration[6.0]
  def change
    create_table :roughs do |t|
      t.string :title
      t.string :tag
      t.string :category

      t.timestamps
    end
  end
end
