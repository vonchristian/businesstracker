class AccountsController < ApplicationController
  layout "landing_page"
  def new
    @account = Account.new
    @account.build_owner
  end
  def create
    @account = Account.create(account_params)
    if @account.save
      redirect_to @account, notice: "Account saved successfully."
    else
      render :new
    end
  end

  def show
    @account = Account.find(params[:id])
  end 

  private
  def account_params
    params.require(:account).permit(:municipality_or_city, owner_attributes:[:first_name, :middle_name, :last_name, :email, :password, :password_confirmation])
  end
end
