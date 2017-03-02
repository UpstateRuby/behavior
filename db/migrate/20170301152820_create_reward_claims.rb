class CreateRewardClaims < ActiveRecord::Migration[5.0]
  def change
    create_table :reward_claims do |t|
      t.references :child
      t.integer :cost
      t.timestamps
    end
  end
end
