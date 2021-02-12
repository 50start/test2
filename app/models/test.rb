class Test < ApplicationRecord
attachment :image
with_options presence: true do
    validates :title
    validates :body
    validates :image
  end

end
