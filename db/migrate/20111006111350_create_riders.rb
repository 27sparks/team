class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.string :klasse
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
