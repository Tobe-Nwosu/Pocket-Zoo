class FindingsController < ApplicationController

  def index
    @my_findings = policy_scope(Finding)
  end

  def show
    @finding = Finding.find(params[:id])
    authorize @finding
  end

  def new
    # @animal = Animal.find(params[:id])
    @finding = Finding.new
    authorize @finding
  end

  def create
    @finding = Finding.new(finding_params)
    @finding.user = current_user
    authorize @finding
  end

  def edit
    authorize @finding
  end

  def update
    authorize @finding
  end

  def destroy
    authorize @finding
  end

  private

  def finding_params
    params.require(:finding).permit(:date, :photo, :comment)
  end
end
