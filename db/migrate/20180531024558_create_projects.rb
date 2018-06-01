class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :description
      t.string :completed
      t.integer :career_id

      t.timestamps
    end
  end
end
