class CreatePolitics < ActiveRecord::Migration[5.1]
  def change
    create_table :politics do |t|
      t.string :name
      t.integer :age
      t.string :state
      t.string :city
      t.string :part

      t.timestamps
    end
  end
end
