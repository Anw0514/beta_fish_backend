class Fish < ApplicationRecord
    has_many :fights
    has_many :opponents, through: :fights
end
