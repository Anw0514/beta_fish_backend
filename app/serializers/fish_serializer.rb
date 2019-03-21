class FishSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :hp, :power, :games_won
end
