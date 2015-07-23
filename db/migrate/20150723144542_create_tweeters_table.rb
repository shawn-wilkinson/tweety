class CreateTweetersTable < ActiveRecord::Migration
  def change
    create_table :tweeters do |t|
      t.string :name
      t.string :twitter_handle

      t.timestamps
    end
  end
end
