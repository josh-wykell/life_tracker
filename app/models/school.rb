class School < ActiveRecord::Base
  validates :name, presence: true

    validates :start_year, numericality: { less_than_or_equal_to: :end_year }



end
