class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :img_url
      t.integer :hp
      t.integer :power
      t.integer :games_won, default: 0

      t.timestamps
    end
  end
end
