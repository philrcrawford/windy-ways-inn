class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :price
      t.binary :image

      t.timestamps
    end
  end
end
