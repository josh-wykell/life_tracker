class AddPersonToLifeEvents < ActiveRecord::Migration
  def change
    add_reference :life_events, :person, index: true, foreign_key: true
  end
end
