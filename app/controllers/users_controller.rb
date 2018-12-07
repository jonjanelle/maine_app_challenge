class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index 
        render json: User.all, status: :ok
    end

    def show
        render json: @user, status: :ok
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: {status: 'User created successfully'}, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end
  
    def update
        
    end

    def delete
    end

    def confirm
        render json: {status: 'ok'}, status: :ok
    end

    private

    def set_user
      @user = User.where(id: params[:id]).first
      render json: {}, status: :bad_request and return if @user.nil?
    end

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

end