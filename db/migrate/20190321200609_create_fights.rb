class CreateFights < ActiveRecord::Migration[5.2]
  def change
    create_table :fights do |t|
      t.belongs_to :fish, foreign_key: true
      t.belongs_to :opponent, foreign_key: true
      t.boolean :won

      t.timestamps
    end
  end
end
