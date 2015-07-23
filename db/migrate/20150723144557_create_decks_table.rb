class CreateDecksTable < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.string :description
      t.references :creator

      t.timestamps
    end
  end
end
