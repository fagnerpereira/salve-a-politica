class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.string :post
      t.date :started_at
      t.date :ended_at
      t.boolean :completed
      t.integer :politic_id

      t.timestamps
    end
  end
end
