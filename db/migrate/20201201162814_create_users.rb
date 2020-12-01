class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :household_size
      t.string :email
      t.string :password
      t.integer :survey_id

      t.timestamps
    end
  end
end
