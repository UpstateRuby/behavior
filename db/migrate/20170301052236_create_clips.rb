class CreateClips < ActiveRecord::Migration[5.0]
  def change
    create_table :clips do |t|
      t.references :child
      t.integer :points
    end
  end
end
