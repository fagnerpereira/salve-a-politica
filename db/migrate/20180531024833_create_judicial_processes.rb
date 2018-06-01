class CreateJudicialProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :judicial_processes do |t|
      t.string :description
      t.boolean :doomed
      t.integer :politic_id

      t.timestamps
    end
  end
end
