class CreateInclusionsTable < ActiveRecord::Migration
  def change
    create_table :inclusions do |t|
      t.references :deck
      t.references :tweeter

      t.timestamps
    end
  end
end
