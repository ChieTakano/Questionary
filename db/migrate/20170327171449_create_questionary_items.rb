class CreateQuestionaryItems < ActiveRecord::Migration
  def change
    create_table :questionary_items do |t|
      t.text :content
      t.integer :questionary_id

      t.timestamps null: false
    end
  end
end
