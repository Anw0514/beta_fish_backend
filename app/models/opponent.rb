class Opponent < ApplicationRecord
    has_many :fights
    has_many :fish, through: :fights
end
