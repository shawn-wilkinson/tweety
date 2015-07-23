class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user
      t.references :deck

      t.timestamps
    end
  end
end
