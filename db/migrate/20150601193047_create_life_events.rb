class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :title
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
