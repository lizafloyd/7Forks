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
    if current_user.forks.length == 0 && params[:a].to_i < 2
      current_user.forks.create!(name:"Prioritizing Health", topic_id:Topic.where(topic: 'Personal Illness')[0].id)
    end
    if params[:b] == "parent"
      current_user.forks.create!(name:"Parental Responsibility", topic_id:Topic.where(topic: 'Kids')[0].id)
    end
    if params[:b] == "adult"
      current_user.forks.create!(name:"Familial Responsibility", topic_id:Topic.where(topic: 'Family Illness')[0].id)
    end
    @work = (params[:w].to_i/10).round
    puts @work
    if @work > 4
      current_user.forks.create!(name:"Work", topic_id:Topic.where(topic: 'Work')[0].id)
      current_user.forks.create!(name:"Overcommitment to Work", topic_id:Topic.where(topic: 'Work')[0].id)
    else @work > 2
      current_user.forks.create!(name:"Work", topic_id:Topic.where(topic: 'Work')[0].id)
    end
    if params[:h] == "hobby"
      current_user.forks.create!(name:params[:i], topic_id:Topic.where(topic: 'Hobby')[0].id)
    end


    redirect_to user_path(current_user)
  end
  # strong params
  private
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
