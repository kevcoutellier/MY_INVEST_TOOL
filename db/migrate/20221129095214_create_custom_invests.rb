class CreateCustomInvests < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_invests do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.integer :unity_cost
      t.integer :actual_cost
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
