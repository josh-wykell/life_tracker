class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :start_year
      t.integer :end_year

      t.timestamps null: false
    end
  end
end
