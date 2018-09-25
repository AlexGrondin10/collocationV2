class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.references :collocation, foreign_key: true

      t.timestamps
    end
  end
end
