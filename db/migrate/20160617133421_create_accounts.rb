class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :owner_id
      t.string :municipality_or_city

      t.timestamps
    end
    add_index :accounts, :owner_id
  end
end
