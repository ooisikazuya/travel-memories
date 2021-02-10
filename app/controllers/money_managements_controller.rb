class MoneyManagementsController < ApplicationController
  def index
    @money_managements = MoneyManagement.where(user_id: current_user)
  end

  def new
    @money_management = MoneyManagement.new
  end

  def show
    @money_management = MoneyManagement.find(params[:id])
    @records = Record.where(money_management_id: @money_management)
  end

  def edit
    @money_management = MoneyManagement.find(params[:id])
    @records = Record.where(money_management_id: @money_management)
  end

  def create
    @user = current_user
    @money_management = @user.money_managements.new(create_money_management_params)
    @money_management.save!
    redirect_to money_managements_path
  end

  def update
    @money_management = MoneyManagement.find(params[:id])
    @money_management.update(update_money_management_params)
    (0..200).each do |i|
      break if params["record_id_#{i}"].nil?
      @record = @money_management.records.find(params["record_id_#{i}"].to_i)
      @record.category = params["category_#{i}"]
      @record.content = params["content_#{i}"]
      @record.cost = params["cost_#{i}"]
      @record.save
    end
    @money_management.records.create(category: params['category'], content: params['content'], cost: params['cost'])
    flash[:notice] = "記録しました！"
    redirect_to money_management_path
  end

  private

  def create_money_management_params
    params.require(:money_management).permit(:name, :budget, :currency)
  end

  def update_money_management_params
    params.permit(:budget)
  end

  def record_params
    params.permit(:category, :content, :cost)
  end
end
