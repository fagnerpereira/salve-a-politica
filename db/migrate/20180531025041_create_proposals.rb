class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :description
      t.string :kind
      t.integer :politic_id

      t.timestamps
    end
  end
end
