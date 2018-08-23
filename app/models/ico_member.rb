class IcoMember < ApplicationRecord
  belongs_to :ico, foreign_key: :coin_symbol, optional: true
end
