class BudgetsController < ApplicationController
  def index
    @budgets = Budget.all.includes([:user]).where(user_id: current_user.id).order(:name)
  end

  def new
    @budget = Budget.new
  end

  def create
    @user = current_user
    @budget = @user.budgets.new(budget_params)
    if @budget.save
      flash[:notice] = 'Budget created successfully'
      @group_budget = @budget.group_budgets.create(group_id: params[:group_id], budget_id: @budget.id)
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def show
    @budget = Budget.find(params[:id])
  end

  private

  def budget_params
    params.permit(:name, :amount)
  end
end
