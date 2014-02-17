class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.references :post, index: true
      t.references :voter, index: true

      t.timestamps
    end
  end
end
