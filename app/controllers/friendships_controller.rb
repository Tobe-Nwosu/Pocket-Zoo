class FriendshipsController < ApplicationController
  def index
    @friendships = policy_scope(Friendship)
    @friendships = Friendship.all
  end

  def show
    @friendship = Friendship.find(params[:id])
    authorize @friendship
  end

  def new
    @friendship = Friendship.new
    authorize @friendship
  end

  def create
    @friendship = Friendship.new
    authorize @friendship
    @friendship.asker = current_user
    @friendship.receiver = User.find(params[:id])
    if @friendship.save
      redirect_to root_path
    else
      render root_path
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    authorize @friendship
    @friendship.destroy
  end
end
