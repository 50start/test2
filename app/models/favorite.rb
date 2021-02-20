class Favorite < ApplicationRecord
belongs_to :user
belongs_to :test

validates_uniqueness_of :test_id, scope: :user_id
end
