class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :profil_picture
      t.integer :personal_balance
      t.date :birth_date
      t.references :collocation, foreign_key: true

      t.timestamps
    end
  end
end
