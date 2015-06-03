class AddPersonToSchools < ActiveRecord::Migration
  def change
    add_reference :schools, :person, index: true, foreign_key: true
  end
end
