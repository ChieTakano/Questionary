class CreateQuestionaries < ActiveRecord::Migration
  def change
    create_table :questionaries do |t|
      t.text :title
      t.text :description
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
