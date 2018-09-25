class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :name
      t.date :due_date
      t.references :user, foreign_key: true
      t.references :categorie, foreign_key: true

      t.timestamps
    end
  end
end