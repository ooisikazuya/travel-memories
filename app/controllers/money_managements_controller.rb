class MoneyManagementsController < ApplicationController
  def index
    @money_managements = MoneyManagement.where(user_id: current_user)
  end

  def new
    @money_management = MoneyManagement.new
  end

  def show
    @money_management = MoneyManagement.find(params[:id])
  end

  def edit
    @money_management = MoneyManagement.find(params[:id])
  end

  def create
    @user = current_user
    @money_management = @user.money_managements.new(money_management_params)
    @money_management.save!
    redirect_to money_managements_path
  end

  private

  def money_management_params
    params.require(:money_management).permit(:name, :user_id, :budget, :currency)
  end
end
