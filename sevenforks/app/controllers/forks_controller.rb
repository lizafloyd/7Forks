class ForksController < ApplicationController
  def index
    @forks = Fork.all
  end

  def show
    @user = User.find(params[:user_id])
    @fork = Fork.find(params[:id])
    @forks = @user.forks.all
  end

  def new
    if current_user.forks.length < 7
      @user = User.find(params[:user_id])
      @fork = Fork.new
    else
      flash[:alert] = "You're overextending yourself. Please reconsider taking on this project."
      redirect_to user_path(current_user)
    end
  end

  def create
    @user = User.find(params[:user_id])
    @fork = @user.forks.create!(fork_params.merge(user: current_user))

    redirect_to user_fork_path(@user, @fork)
  end

  def edit
    @fork = Fork.find(params[:id])
  end

  def update
    @fork = Fork.find(params[:id])
    if @fork.user == current_user
      @fork.update(fork_params)
    else
      flash[:alert] = "You can only change your own forks."
      redirect_to fork_path(@fork)
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @fork = @user.forks.find(params[:id])
    if @fork.user == current_user
      @fork.destroy
    else
      flash[:alert] = "You can only change your own forks."
    end
    redirect_to user_path(@user)
  end

  # strong params
  private
  def fork_params
    params.require(:fork).permit(:topic_id, :name)
  end
end
