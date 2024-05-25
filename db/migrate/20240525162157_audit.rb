class Audit < ActiveRecord::Migration[6.1]
  def change
    create_table :audit do |t|
      t.string :name
      t.string :description
      t.string :status

      t.timestamps
    end
    Audit.create :name => 'Kurmane AUDIT', :description => 'Description of audit', :status => 'pending'
  end
end
