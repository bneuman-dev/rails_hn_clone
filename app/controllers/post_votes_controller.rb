class PostVotesController < ApplicationController
  def create
    post_vote = PostVote.create(voter_id: session[:user_id], post_id: params[:post_id])
    redirect_to post_path(post_vote.post)
  end
end
