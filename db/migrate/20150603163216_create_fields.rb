class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :question
      t.string :type
      t.integer :survey_id

      t.timestamps null: false
    end
  end
end
