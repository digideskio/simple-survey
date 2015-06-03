class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :survey_id
      t.integer :option_id

      t.timestamps null: false
    end
  end
end
