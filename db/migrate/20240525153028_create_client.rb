class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :client do |t|
      t.string :name
      t.string :phone
      t.string :datestamp
      t.string :barber
      t.string :color

      t.timestamps
    end
  end
end
