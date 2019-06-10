class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    tweet = Micropost.find(params[:favorite_id])
    current_user.fav(tweet)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to tweet
  end

  def destroy
    tweet = Micropost.find(params[:favorite_id])
    current_user.unfav(tweet)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to tweet
  end
end
