class CreateBarbers < ActiveRecord::Migration[6.1]
  def change
    create_table :barbers do |t|
      t.string :name

      t.timestamps
    end
    Barber.create :name => 'Suchka Som'
    Barber.create :name => 'Porka Kurme'
    Barber.create :name => 'Dadada Lalala Som'

  end
end
