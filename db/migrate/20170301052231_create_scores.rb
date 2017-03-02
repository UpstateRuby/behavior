class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.references :child
      t.integer :points
      t.date :recorded_on
      t.index :recorded_on
    end
  end
end
