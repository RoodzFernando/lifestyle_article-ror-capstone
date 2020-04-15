class Vote < ApplicationRecord
  has_one :user
  has_one :article
end
