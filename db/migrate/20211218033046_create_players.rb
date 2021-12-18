class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :mobile_number
      t.string :email
      t.datetime :joining_date

      t.timestamps
    end
  end
end
