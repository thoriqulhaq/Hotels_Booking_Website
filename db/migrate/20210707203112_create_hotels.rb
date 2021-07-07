class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :room_num
      t.string :first_name
      t.string :last_name
      t.string :phone_num
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
