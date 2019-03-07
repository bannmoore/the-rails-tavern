class CreateSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :sheets do |t|
      t.integer :level
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
