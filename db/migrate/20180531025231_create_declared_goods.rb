class CreateDeclaredGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :declared_goods do |t|
      t.string :description
      t.float :value
      t.integer :politic_id

      t.timestamps
    end
  end
end
