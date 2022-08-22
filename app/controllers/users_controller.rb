class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:user_id])
    end
  end