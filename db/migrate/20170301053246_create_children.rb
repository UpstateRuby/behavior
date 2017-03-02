class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :name, length: 100
      t.timestamps
    end
  end
end
