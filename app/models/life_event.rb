class LifeEvent < ActiveRecord::Base
  validates :title, presence: true,
              length: { minimum: 5 }
  validates :description, presence: true,
              length: { maximum: 140 }
  
end
