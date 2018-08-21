class CreateEthAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :eth_addresses do |t|
      t.belongs_to :user, foreign_key: true
      t.string :address, null: false
      t.timestamps
    end

    # add_index :btc_addresses, :user_id, unique: true
  end
end
