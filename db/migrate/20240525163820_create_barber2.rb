class CreateBarber2 < ActiveRecord::Migration[6.1]
  def change
    create_table :barbers do |t|
      t.string :name

      t.timestamps
    end
    Barber.create :name => 'Suchka Som'
    Barber.create :name => 'Porka Kurme'
    Barber.create :name => 'Dadada Lalala Som'
    Barber.create :name => 'Dadada Lalala Som 2'
    Barber.create :name => 'Dadada Lalala Som 3'
    Barber.create :name => 'Dadada Lalala Som 4 '
    Barber.create :name => 'Dadada Lalala Som 5'
  end
end
