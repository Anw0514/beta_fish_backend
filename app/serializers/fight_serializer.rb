class FightSerializer < ActiveModel::Serializer
  attributes :id, :won
  has_one :fish
  has_one :opponent
end
