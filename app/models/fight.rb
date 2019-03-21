class Fight < ApplicationRecord
  belongs_to :fish
  belongs_to :opponent
end
