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
  @user = User.find(params[:user_id])
  @fork = Fork.new
end

def create
  @user = User.find(params[:user_id])
  @fork = @user.forks.create!(fork_params)

  redirect_to user_fork_path(@user, @fork)
end

def edit
  @fork = Fork.find(params[:id])
end

def update
  @fork = Fork.find(params[:id])
  @fork.update(fork_params)

  redirect_to fork_path(@fork)
end

def destroy
  @user = User.find(params[:user_id])
  @fork = @user.forks.find(params[:id])
  @fork.destroy

  redirect_to user_path(@user)
end

# strong params
private
def fork_params
  params.require(:fork).permit(:topic, :name)
end
end
