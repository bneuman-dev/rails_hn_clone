class Post < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :comments
  has_many :post_votes

  def vote_count
    PostVote.where(post_id: self.id).count
  end
end
