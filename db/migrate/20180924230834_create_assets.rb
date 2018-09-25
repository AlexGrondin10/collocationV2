class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :price
      t.date :purchase_date
      t.string :paid_by
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
