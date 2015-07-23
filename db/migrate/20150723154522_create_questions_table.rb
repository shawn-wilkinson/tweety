class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :game
      t.references :guessed_tweeter
      t.references :tweeter
      t.string :tweet_content
    end
  end
end
