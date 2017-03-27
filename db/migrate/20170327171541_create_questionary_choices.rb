class CreateQuestionaryChoices < ActiveRecord::Migration
  def change
    create_table :questionary_choices do |t|
      t.text :content
      t.integer :value
      t.integer :questionary_item_id

      t.timestamps null: false
    end
  end
end
