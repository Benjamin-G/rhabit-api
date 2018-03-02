module Api::V1
  class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end

    def create
      @user = User.create(user_params)
      
      render json: @user
    end

    def subs
      @users = User.where(manager_id: params[:id])

      render json: @users
    end


    #should destroy
    def destroy
      @user = User.find(params[:id])

      @getting_promoted = User.where(manager_id: @user.user_id)

      @getting_promoted.update_all(:manager_id => @user.manager_id)


      if @user.destroy
        head :no_content, status: :ok
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    private

      def user_params
        params.require(:user).permit(:user_id, :firstName, :lastName, :title, :manager_id)
      end

  end
end