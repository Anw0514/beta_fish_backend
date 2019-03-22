class Fight < ApplicationRecord
  belongs_to :fish
  belongs_to :opponent

  def update_fish 
    if self.won == true
      self.fish.games_won += 1
      self.fish.save
    end
  end
end
