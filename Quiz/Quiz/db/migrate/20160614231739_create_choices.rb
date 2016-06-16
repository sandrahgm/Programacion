class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :text
      t.integer :correct
      t.references :question, foreign_key: {on_delate: :cascade}

      t.timestamps
    end
  end
end
