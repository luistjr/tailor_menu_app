class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :household_size
      t.integer :lifestyle_id

      t.timestamps
    end
  end
end
