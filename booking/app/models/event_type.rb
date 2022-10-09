class EventType < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many :events
end
