class StarsController < ApplicationController
  before_action :require_user_logged_in
  def create
    a_post = Micropost.find(params[:favorite_id])
    current_user.favorite(a_post)
    flash[:success] = 'お気に入りに登録しました'
    redirect_to '/'
  end

  def destroy
    a_post = Micropost.find(params[:favorite_id])
    current_user.unfavorite(a_post)
    flash[:success] = "お気に入りを解除しました"
    redirect_to '/'
  end
end
