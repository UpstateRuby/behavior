class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :name, length: 50
      t.string :color, length: 7
      t.integer :points
      t.boolean :default, default: false
    end
  end
end
