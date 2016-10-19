class UsersController < ApplicationController
def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
  @forks = @user.forks.all
end

def new
  @user = User.new
end

def create
  @user = User.create(user_params)

  redirect_to user_path(@user)
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)

  redirect_to user_path(@user)
end

def destroy
  @user = User.find(params[:id])
  @user.destroy

  redirect_to users_path
end

def profile

end

def setup
  if params[:p].to_i < 5
    current_user.forks.create!(name:"Prioritizing Wellness", topic_id:Topic.where(topic: 'Personal Illness')[0].id)
  end

  redirect_to user_path(current_user)
  # binding.pry
end
# strong params
private
def user_params
  params.require(:user).permit(:email, :username, :password)
end
end
