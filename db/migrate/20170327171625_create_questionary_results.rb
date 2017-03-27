class CreateQuestionaryResults < ActiveRecord::Migration
  def change
    create_table :questionary_results do |t|
      t.integer :questionary_id
      t.text :result

      t.timestamps null: false
    end
  end
end
