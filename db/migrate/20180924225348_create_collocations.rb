class CreateCollocations < ActiveRecord::Migration[5.2]
  def change
    create_table :collocations do |t|
      t.string :name
      t.string :adress
      t.string :zip_code_string
      t.string :city

      t.timestamps
    end
  end
end
