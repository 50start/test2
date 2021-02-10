class Test < ApplicationRecord
attachment :image
with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
 belongs_to :use
end
