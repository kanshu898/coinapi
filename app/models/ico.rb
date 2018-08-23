class Ico < ApplicationRecord
  has_many :ico_members, foreign_key: :coin_symbol
end
