class RecordsController < ApplicationController
  def destroy
    money_management = MoneyManagement.find(params[:money_management_id])
    money_management.records.find(params[:id]).destroy!
    redirect_to edit_money_management_path(money_management)
  end
end
