class Todo < ActiveRecord::Base
  attr_accessible :description, :item, :target_date
  validates :item, presence: true
end
